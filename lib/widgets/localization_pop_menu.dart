import 'package:crypnote/features/crypnote/providers/current_localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocalizationPopMenu extends ConsumerWidget {
  const LocalizationPopMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(currentLocalizationControllerProvider.notifier);
    final state = ref.watch(currentLocalizationControllerProvider);

    return PopupMenuButton<Locale>(
      icon: Icon(Icons.translate),
      initialValue: state,
      itemBuilder: (context) => [
        for (final locale in notifier.supportedLocale)
          PopupMenuItem<Locale>(
            value: locale,
            child: Text(locale.languageCode.toUpperCase()),
          ),
      ],
      onSelected: (value) => notifier.changeLocale(value),
    );
  }
}
