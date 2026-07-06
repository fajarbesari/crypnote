import 'package:crypnote/core/providers/countdown_stream_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Countdown extends ConsumerWidget {
  const Countdown({super.key, required this.dateTime, required this.style});

  final DateTime dateTime;

  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(countdownProvider(dateTime));

    ref.invalidate(countdownProvider);

    return state.when(
      data: (data) => Text(data, style: style),
      error: (e, r) => Text(e.toString()),
      loading: () => SizedBox.shrink(),
    );
  }
}
