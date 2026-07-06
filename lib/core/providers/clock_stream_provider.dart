import 'package:crypnote/core/usesCase/date_and_time_use_case.dart';
import '../locator_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clock_stream_provider.g.dart';

@riverpod
Stream<String> clock(Ref ref) async* {
  final clock = locator<DateAndTimeUseCase>();

  final tick = clock.clock();

  await for (var tic in tick) {
    yield tic;
  }
}
