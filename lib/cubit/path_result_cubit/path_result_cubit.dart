import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/config/app_config.dart';
import 'package:path_finder/cubit/path_result_cubit/path_result_state.dart';
import 'package:path_finder/models/base_responce_model/base_responce_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/network/dio_config.dart';
import 'package:path_finder/network/repo/main_repo.dart';

class PathResultCubit extends Cubit<PathResultState> {
  PathResultCubit() : super(const PathResultIdle());

  final MainRepo mainRepo = MainRepo(DioConfig.instance.getDio());

  void sendResult(List<ResultDto> results) async {
    try {
      emit(const PathResultLoading());
      BaseResponceModel response = await mainRepo.sendResult(results);
      emit(PathResultCompleted(baseResponceModel: response));
    } catch (error, stactrace) {
      emit(PathResultError(error: error.toString()));
      Logger.e(stactrace.toString(), error.toString());
    }
  }
}
