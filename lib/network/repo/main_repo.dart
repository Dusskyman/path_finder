import 'package:dio/dio.dart';
import 'package:path_finder/config/app_config.dart';
import 'package:path_finder/models/base_responce_model/base_responce_model.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/network/api/api.dart';
import 'package:path_finder/network/repo/base_repo.dart';

class MainRepo extends BaseRepository {
  MainRepo(Dio dio) : super(dio);

  Future<List<GridModel>> getGrid(String url) async {
    try {
      if (url == Api.baseUrl) {
        BaseResponceModel baseResponceModel = await api.getGrid();
        List<GridModel> gridModels = baseResponceModel.data
            .map((data) => GridModel.fromJson(data))
            .toList();
        Logger.i('GRID', gridModels);
        return gridModels;
      } else {
        throw 'Invalid url';
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<BaseResponceModel> sendResult(List<ResultDto> resultDto) async {
    try {
      BaseResponceModel baseResponceModel = await api.sendResult(resultDto);
      return baseResponceModel;
    } catch (e) {
      rethrow;
    }
  }
}
