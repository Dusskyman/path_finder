import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor._privateConstructor();

  static final HeaderInterceptor _instance =
      HeaderInterceptor._privateConstructor();

  static HeaderInterceptor get instance => _instance;

  late Dio _dio;

  Logger get _logger => Logger('[$runtimeType]');

  late Future Function(RequestOptions) onRequestFunction;
  late Future Function(Response) onResponseFunction;
  late Future Function(DioException) onErrorFunction;

  void set(
    Dio dio,
  ) {
    _dio = dio;
  }

  void init({
    required Future Function(DioException error) onError,
    required Future Function(RequestOptions options) onRequest,
    required Future Function(Response response) onResponse,
  }) {
    onRequestFunction = onRequest;
    onResponseFunction = onResponse;
    onErrorFunction = onError;
    return;
  }

  @override
  Future onRequest(RequestOptions options, handler) async {
    _logger.info('onRequest options: $options');
    _logger.info('onRequest body: ${options.data}');
    options.contentType = 'application/json; charset=UTF-8';
    options.headers['keep-alive'] = 'timeout=5, max=1000';

    _logger.info('onRequest headers: ${options.headers}');
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, handler) async {
    _logger.info('onError error: $err');
    return super.onError(err, handler);
  }

  @override
  Future onResponse(Response response, handler) async {
    if (response.data != null &&
        response.data.toString().isNotEmpty &&
        response.headers.map[Headers.contentTypeHeader]?.first
                .startsWith('text') ==
            true) {
      try {
        response.data = jsonDecode(response.data as String);
      } catch (e) {}
      return handler.next(response);
    }
    return handler.next(response);
  }

  Future retryRequest(RequestOptions requestOptions) {
    return _dio.request<dynamic>(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
    );
  }
}
