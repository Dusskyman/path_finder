import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor._privateConstructor();

  static final ErrorInterceptor _instance =
      ErrorInterceptor._privateConstructor();

  static ErrorInterceptor get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  void init({required void Function(DioException) onErrorCallback}) {
    this.onErrorCallback = onErrorCallback;
  }

  late void Function(DioException) onErrorCallback;

  @override
  Future<dynamic> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    logger
        .warning('---------||${err.error}\n\n ${err.response?.data ?? ''}\n\n');

    onErrorCallback(err);
    return super.onError(err, handler);
  }
}
