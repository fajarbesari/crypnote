import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutAndLisenceDialog extends ConsumerWidget {
  const AboutAndLisenceDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    return AboutDialog(
      applicationName: lang?.applicationName ?? '',
      applicationVersion: lang?.applicationVersion ?? '',
      applicationLegalese: lang?.applicationLegalese ?? '',
      applicationIcon: Image.asset(
        'assets/images/splash.png',
        width: 100,
        height: 100,
      ),
    );
  }
}
