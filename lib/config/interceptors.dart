import 'package:dio/dio.dart';
import 'package:path_finder/network/interceptor/error_interceptor.dart';
import 'package:path_finder/network/interceptor/header_interceptor.dart';

Future<void> initInterceptors() async {
  HeaderInterceptor.instance.init(
    onError: (DioException error) async {},
    onRequest: (RequestOptions options) async {},
    onResponse: (dynamic t) async {},
  );

  ErrorInterceptor.instance.init(
    onErrorCallback: (DioException error) {},
  );
}
