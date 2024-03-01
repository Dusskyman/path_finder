import 'package:equatable/equatable.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';

abstract class GridProcessedState extends Equatable {
  const GridProcessedState();
}

class GridProcessedIdle extends GridProcessedState {
  const GridProcessedIdle();

  @override
  List<Object?> get props => [];
}

class GridProcessedLoading extends GridProcessedState {
  const GridProcessedLoading();

  @override
  List<Object?> get props => [];
}

class GridProcessedCompleted extends GridProcessedState {
  final List<GridModel> gridModels;

  const GridProcessedCompleted({
    required this.gridModels,
  });

  @override
  List<Object?> get props => [];
}

class GridProcessedError extends GridProcessedState {
  final String? error;
  const GridProcessedError({this.error});

  @override
  List<Object?> get props => [];
}
