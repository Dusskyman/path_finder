import 'package:path_finder/models/base_responce_model/base_responce_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/network/api/api.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //GET
  @GET(Api.baseUrl)
  Future<BaseResponceModel> getGrid();

  //POST
  @POST(Api.baseUrl)
  Future<BaseResponceModel> sendResult(@Body() List<ResultDto> resultDto);
}
