import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_a_second.g.dart';

@riverpod
Stream<DateTime> refreshASecond(Ref ref) async* {
  await for (var s in Stream.periodic(
    Duration(seconds: 1),
    (_) => DateTime.now(),
  )) {
    yield s;
  }
}
