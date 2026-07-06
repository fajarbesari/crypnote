class Logging {
  final String message;
  LoggingInfo? loggingInfo = LoggingInfo.DEBUG;
  DateTime? logAt;

  Logging({required this.message, this.loggingInfo, this.logAt});

  factory Logging._msg({required String msg, LoggingInfo? loggingInfo}) =>
      Logging(message: msg, logAt: DateTime.now(), loggingInfo: loggingInfo);

  static void messages(
    String msg, [
    LoggingInfo? loggingInfo = LoggingInfo.DEBUG,
  ]) => print(Logging._msg(msg: msg, loggingInfo: loggingInfo).toString());

  @override
  String toString() {
    return '[${loggingInfo?.name}] $message ${logAt?.toIso8601String()}';
  }
}

enum LoggingInfo { WARNING, DEBUG, FAIL, SUCCESS }
