import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/config/app_config.dart';
import 'package:path_finder/cubit/grid_processed_cubit/grid_processed_state.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/network/dio_config.dart';
import 'package:path_finder/network/repo/main_repo.dart';

class GridProcessedCubit extends Cubit<GridProcessedState> {
  GridProcessedCubit() : super(const GridProcessedIdle());

  final MainRepo mainRepo = MainRepo(DioConfig.instance.getDio());

  void gedGrid(String url) async {
    try {
      emit(const GridProcessedLoading());
      List<GridModel> gridModels = await mainRepo.getGrid(url);
      emit(GridProcessedCompleted(gridModels: gridModels));
    } catch (error, stactrace) {
      emit(const GridProcessedError(
        error: 'Invalid url, please provide valid url',
      ));
      emit(const GridProcessedIdle());
      Logger.e(stactrace.toString(), error.toString());
    }
  }
}
