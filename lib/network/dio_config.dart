import 'package:dio/dio.dart';
import 'package:path_finder/network/interceptor/error_interceptor.dart';
import 'package:path_finder/network/interceptor/header_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';

class DioConfig {
  DioConfig._privateConstructor();

  static final DioConfig _instance = DioConfig._privateConstructor();

  static DioConfig get instance => _instance;

  Interceptor get _errorInterceptor => ErrorInterceptor.instance;

  Interceptor get _headerInterceptor => HeaderInterceptor.instance;

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
    );
  }

  Dio getDio() {
    final dio = Dio(_dioOptions);
    HeaderInterceptor.instance.set(
      dio,
    );
    final interceptors = [
      _headerInterceptor,
      _errorInterceptor,
      PrettyDioLogger(requestHeader: true, requestBody: true),
    ];
    return dio
      ..interceptors.addAll([
        ...interceptors,
      ]);
  }
}
