import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stream_duration_countdown.g.dart';

@riverpod
Stream<String?> countDownDuration(Ref ref, {required DateTime until}) async* {
  final duration = until.difference(DateTime.now());

  yield duration.toString();
}
