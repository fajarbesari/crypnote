import 'dart:async';

import 'package:crypnote/features/profile/providers/current_theme_controller.dart';
import 'package:crypnote/core/usesCase/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ToggleTheme extends ConsumerWidget {
  const ToggleTheme({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentThemeControllerProvider);
    final notifier = ref.watch(currentThemeControllerProvider.notifier);

    void onToggle() {
      unawaited(notifier.togleTheme());
    }

    return IconButton(
      onPressed: onToggle,
      icon: state == CrypnoteThemeMode.light
          ? Icon(Icons.light)
          : Icon(Icons.dark_mode),
    );
  }
}
