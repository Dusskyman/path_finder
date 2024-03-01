import 'package:equatable/equatable.dart';
import 'package:path_finder/models/base_responce_model/base_responce_model.dart';

abstract class PathResultState extends Equatable {
  const PathResultState();
}

class PathResultIdle extends PathResultState {
  const PathResultIdle();

  @override
  List<Object?> get props => [];
}

class PathResultLoading extends PathResultState {
  const PathResultLoading();

  @override
  List<Object?> get props => [];
}

class PathResultCompleted extends PathResultState {
  final BaseResponceModel baseResponceModel;

  const PathResultCompleted({
    required this.baseResponceModel,
  });

  @override
  List<Object?> get props => [];
}

class PathResultError extends PathResultState {
  final String? error;
  const PathResultError({this.error});

  @override
  List<Object?> get props => [];
}
