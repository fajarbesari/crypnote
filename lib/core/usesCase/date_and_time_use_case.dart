import 'package:crypnote/core/utils/extensions_date_time.dart';

class DateAndTimeUseCase {
  Stream<String> clock() async* {
    DateTime now = DateTime.now();
    final time = Stream<int>.periodic(Duration(seconds: 1), (t) => t);
    // ignore: unused_local_variable
    await for (var tim in time) {
      yield now.formattedTime;
    }
  }

  Stream<String> countdown(DateTime until) async* {
    final time = Stream<int>.periodic(Duration(seconds: 1), (t) => t);

    // ignore: unused_local_variable
    await for (var tim in time) {
      DateTime now = DateTime.now();
      final gap = until.difference(now);

      yield gap.toString().split('.').first;

      // yield '${gap.inHours}:${gap.inMinutes}:${gap.inSeconds}';
    }
  }

  String get time {
    final now = DateTime.now();
    return now.formattedTime;
  }
}
