import 'package:logger/logger.dart';

class Log {
  Log._();

  static late Logger _instance;

  static Future<void> init({required bool isLog}) async {
    _instance = Logger(
      filter: AppLogFilter(isLog),
      printer: PrettyPrinter(
          methodCount: 1,
          // number of method calls to be displayed
          errorMethodCount: 1,
          // number of method calls if stacktrace is provided
          lineLength: 120,
          // width of the output
          colors: true,
          // Colorful log messages
          printEmojis: true,
          // Print an emoji for each log message
          printTime: true // Should each log print contain a timestamp
          ),
    );
  }

  static void setLevel(Level level) {
    Logger.level = level;
  }

  static void printSimpleLog(dynamic data) {
    // String message = '[${DateTime.now().toUtc()}] ${data.toString()}';
    Log.info('MyApp', data);
  }

  static void info(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.i('$tag: $message', error, stackTrace);
  }

  static void warning(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.w('$tag: $message', error, stackTrace);
  }

  static void verbose(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.v('$tag: $message', error, stackTrace);
  }

  static void debug(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.d(message, error, stackTrace);
  }

  static void error(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.e('$tag: $message', error, stackTrace);
  }

  static void wtf(String tag, dynamic message,
      [Object? error, StackTrace? stackTrace]) {
    _instance.wtf('$tag: $message', error, stackTrace);
  }
}

class AppLogFilter extends LogFilter {
  final bool isLog;

  AppLogFilter(this.isLog);

  @override
  bool shouldLog(LogEvent event) {
    return isLog;
  }
}
