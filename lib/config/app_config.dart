import 'dart:developer' as developer;

import 'package:logging/logging.dart';

class Logger {
  static late LoggerProvider _logger;

  static void init(LoggerProvider provider) => _logger = provider;

  static void d(String message, [Object? args]) => _logger.d(message, args);

  static void i(String message, [Object? args]) => _logger.i(message, args);

  static void w(String message, [Object? args]) => _logger.w(message, args);

  static void e(String message, [Object? args, StackTrace? stackTrace]) =>
      _logger.e(message, args, stackTrace);
}

abstract class LoggerProvider {
  void d(String message, [Object? args]);

  void i(String message, [Object? args]);

  void w(String message, [Object? args]);

  void e(String message, [Object? args, StackTrace? stackTrace]);
}

class LocalLogger implements LoggerProvider {
  @override
  void d(String message, [Object? args]) => developer.log(
        '[DEBUG] $message ${args?.toString() ?? ''}',
      );

  @override
  void i(String message, [Object? args]) =>
      developer.log('[INFO] $message ${args?.toString() ?? ''}');

  @override
  void w(String message, [Object? args]) =>
      developer.log('[WARN] $message ${args?.toString() ?? ''}');

  @override
  void e(String message, [Object? args, StackTrace? stackTrace]) =>
      developer.log(
        '[ERROR] $message ${args?.toString() ?? ''}',
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
      );
}
