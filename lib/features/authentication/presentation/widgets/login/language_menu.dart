import 'dart:async';
import '../../../../../core/controllers/current_language_controller.dart';
import '../../../../../core/entities/lang.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LanguagePopMenuAction extends HookConsumerWidget {
  const LanguagePopMenuAction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentLanguageControllerProvider);
    final notifier = ref.read(currentLanguageControllerProvider.notifier);
    return PopupMenuButton<Lang>(
      icon: Icon(Icons.translate),
      initialValue: state,
      itemBuilder: (context) => [
        for (Lang item in [])
          PopupMenuItem<Lang>(value: item, child: Text(item.id.toUpperCase())),
      ],
      onSelected: (value) => unawaited(notifier.modifyLanguage(value)),
    );
  }
}
