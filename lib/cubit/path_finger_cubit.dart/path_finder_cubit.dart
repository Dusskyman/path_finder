import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/config/app_config.dart';
import 'package:path_finder/cubit/path_finger_cubit.dart/path_finger_state.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';

import '../../models/field_model/field_model.dart';

//Realization of A* algorithm(https://ru.wikipedia.org/wiki/A*)

class PathFinderCubit extends Cubit<PathFinderState> {
  PathFinderCubit() : super(const PathFinderLoading());

  //Main method for finding path
  void findPath(List<GridModel> grids) async {
    int iterations = 0;
    List<ResultDto> results = [];
    for (GridModel grid in grids) {
      double progress = 0;
      Field startField = Field(grid.start['x']!, grid.start['y']!);
      Field endField = Field(grid.end['x']!, grid.end['y']!);
      int gridlenght =
          (grid.proccedField.length * grid.proccedField.first.length);

      //List of all non visited fields
      List<Field> openList = [];

      //List of all visited fields
      List<Field> closedList = [];

      openList.add(startField);

      while (openList.isNotEmpty) {
        emit(PathFinderLoading(progress: progress, iterations: iterations));
        progress = closedList.length / gridlenght;
        await Future.delayed(const Duration(milliseconds: 500));

        Field currentField = openList[0];

        //Checking for cost of field, if it's lower or equal, set it up as current field
        for (int i = 1; i < openList.length; i++) {
          if (openList[i].fCost < currentField.fCost ||
              (openList[i].fCost == currentField.fCost &&
                  openList[i].eCost < currentField.eCost)) {
            currentField = openList[i];
          }
        }

        openList.remove(currentField);
        closedList.add(currentField);

        if (currentField == endField) {
          progress = 1;
          iterations++;

          emit(PathFinderLoading(progress: progress, iterations: iterations));
          List<Field> fields = _reconstructPath(currentField);
          results.add(fieldsToResult(grid.id, fields));

          if (iterations == grids.length) {
            emit(PathFinderCompleted(results: results));
            return;
          }
          await Future.delayed(const Duration(milliseconds: 500));

          break;
        }

        //Here all near by fields(that satisfy conditions) going to openlist and determinating cost of them

        List<Field> neighbors = _getNeighborsFields(
          grid.proccedField,
          currentField,
        );
        for (Field neighbor in neighbors) {
          if (closedList.contains(neighbor)) {
            continue;
          }

          int newMovementCostToNeighbor = currentField.sCost + 1;
          if (newMovementCostToNeighbor < neighbor.sCost ||
              !openList.contains(neighbor)) {
            neighbor.sCost = newMovementCostToNeighbor;
            neighbor.eCost = _calculateDistance(neighbor, endField);
            neighbor.parent = currentField;

            if (!openList.contains(neighbor)) {
              openList.add(neighbor);
            }
          }
        }
      }
    }
    Logger.e('Path finder:', 'Can\'t process grid');
    emit(const PathFinderError(error: 'Can\'t process grid'));
    return;
  }

//Method for getting eCost
  int _calculateDistance(Field a, Field b) {
    return (a.x - b.x).abs() + (a.y - b.y).abs();
  }

//Getting all nearby cells which satisfy the conditions
  List<Field> _getNeighborsFields(List<List<String>> grid, Field field) {
    List<Field> neighbors = [];
    int numRows = grid.length;
    int numCols = grid[0].length;

    for (int dx = -1; dx <= 1; dx++) {
      for (int dy = -1; dy <= 1; dy++) {
        if (dx == 0 && dy == 0) continue;
        int neighborX = field.x + dx;
        int neighborY = field.y + dy;
        if (neighborX >= 0 &&
            neighborX < numRows &&
            neighborY >= 0 &&
            neighborY < numCols &&
            grid[neighborX][neighborY] != 'x') {
          neighbors.add(Field(neighborX, neighborY));
        }
      }
    }

    return neighbors;
  }

//Getting from end to start point, returning our path
  List<Field> _reconstructPath(Field currentNode) {
    List<Field> path = [];
    while (currentNode.parent != null) {
      path.add(currentNode);
      currentNode = currentNode.parent!;
    }
    path.add(currentNode);
    return path.reversed.toList();
  }

//Marks path in greed, not nessesary method
  void markVisitedPath(
    List<Field> path,
    List<List<String>> grid,
    String symbol,
    Field startField,
    Field endField,
  ) {
    for (Field node in path) {
      grid[node.y][node.x] = symbol;
    }
  }

  ResultDto fieldsToResult(String id, List<Field> fields) {
    List<ResultField> resultFields = fields
        .map(
          (field) => ResultField(
            x: field.x.toString(),
            y: field.y.toString(),
          ),
        )
        .toList();
    String resultPath = '';
    for (var i = 0; i < resultFields.length; i++) {
      if ((i + 1) == resultFields.length) {
        resultPath += '(${resultFields[i].x}, ${resultFields[i].y})';
        continue;
      }
      resultPath += '(${resultFields[i].x}, ${resultFields[i].y})->';
    }
    return ResultDto(
      id: id,
      result: SubResult(
        steps: resultFields,
        path: resultPath,
      ),
    );
  }
}
