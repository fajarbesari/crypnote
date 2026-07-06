import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/core/usesCase/date_and_time_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countdown_stream_provider.g.dart';

@riverpod
Stream<String> countdown(Ref ref, DateTime until) async* {
  final useCase = locator<DateAndTimeUseCase>();

  final tick = useCase.countdown(until);

  await for (var tic in tick) {
    yield tic;
  }
}
