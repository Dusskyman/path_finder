import 'package:equatable/equatable.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';

import '../../models/field_model/field_model.dart';

abstract class PathFinderState extends Equatable {
  const PathFinderState();
}

class PathFinderIdle extends PathFinderState {
  final List<Field> pathFields;

  const PathFinderIdle({required this.pathFields});

  @override
  List<Object?> get props => [];
}

class PathFinderLoading extends PathFinderState {
  final double progress;
  final int iterations;

  const PathFinderLoading({
    this.progress = 0,
    this.iterations = 0,
  });

  @override
  List<Object?> get props => [progress];
}

class PathFinderCompleted extends PathFinderState {
  final List<ResultDto> results;
  const PathFinderCompleted({required this.results});

  @override
  List<Object?> get props => [];
}

class PathFinderError extends PathFinderState {
  final String? error;
  const PathFinderError({this.error});

  @override
  List<Object?> get props => [];
}
