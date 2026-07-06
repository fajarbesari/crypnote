import 'package:crypnote/l10n/app_localization.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  void showSnackBar(String label) => ScaffoldMessenger.of(this).showSnackBar(
    SnackBar(content: Text(label), behavior: SnackBarBehavior.floating),
  );

  Color getAlgorithmContainerColor(String algorithm) {
    if (algorithm == 'AesGcm') {
      return Theme.of(this).colorScheme.tertiaryContainer;
    }
    if (algorithm == 'Chacha20') {
      return Theme.of(this).colorScheme.secondaryContainer;
    }
    if (algorithm == 'Xchacha20') {
      return Theme.of(this).colorScheme.primaryContainer;
    }
    throw UnsupportedError('Unknown algorithm');
  }

  Color getAlgorithmColor(String algorithm) {
    if (algorithm == 'AesGcm') {
      return Theme.of(this).colorScheme.tertiary;
    }
    if (algorithm == 'Chacha20') {
      return Theme.of(this).colorScheme.secondary;
    }
    if (algorithm == 'Xchacha20') {
      return Theme.of(this).colorScheme.primary;
    }
    throw UnsupportedError('Unknown algorithm');
  }

  AppLocalizations? get localization => AppLocalizations.of(this);
}
