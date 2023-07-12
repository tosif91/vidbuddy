import 'package:logger/logger.dart';

///  mxin is use for logging
mixin MLogger {
  final logger = Logger(
    output: ConsoleOutput(),
    printer: PrettyPrinter(
        noBoxingByDefault: true,
        methodCount: 0,
        stackTraceBeginIndex: 0,
        errorMethodCount: 2),
  );

  logd(String message) {
    logger.d('${_getClassName()} => $message');
  }

  logv(String message) {
    logger.v('${_getClassName()} => $message');
  }

  loge(String message) {
    logger.e('${_getClassName()} => $message');
  }

  llog(Level level, String message) {
    logger.log(level, '${_getClassName()} => $message');
  }

  logi(String message) {
    logger.i('${_getClassName()} => $message');
  }

  logw(String message) {
    logger.w('${_getClassName()} => $message');
  }

  String _getClassName() {
    try {
      return toString().split('of ')[1];
    } catch (e) {
      return '';
    }
  }
}
