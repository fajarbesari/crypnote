import 'package:crypnote/core/providers/clock_stream_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Clock extends ConsumerWidget {
  const Clock({super.key, required this.style});

  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clockProvider);

    ref.invalidate(clockProvider);
    return state.when(
      data: (data) => Text(data, style: style),
      error: (e, s) => Text(e.toString()),
      loading: () => SizedBox.shrink(),
    );
  }
}
