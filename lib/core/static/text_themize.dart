import 'package:flutter/material.dart';

extension TextThemize on BuildContext {
  TextStyle? get display => Theme.of(this).textTheme.displayLarge;
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get body => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get label => Theme.of(this).textTheme.labelLarge;

  Color? get surface => Theme.of(this).colorScheme.surface;
  Color? get surfaceBright => Theme.of(this).colorScheme.surfaceBright;
  Color? get surfaceContainerHighest =>
      Theme.of(this).colorScheme.surfaceContainerHighest;
  Color? get surfaceContainerLowest =>
      Theme.of(this).colorScheme.surfaceContainerLowest;
  Color? get onSurface => Theme.of(this).colorScheme.onSurface;

  Color? get surfaceDim => Theme.of(this).colorScheme.surfaceDim;

  // for button and components
  Color? get primaryBackground => Theme.of(this).colorScheme.primaryContainer;
  Color? get onPrimaryBackground =>
      Theme.of(this).colorScheme.onPrimaryContainer;
  Color? get primary => Theme.of(this).colorScheme.primary;
  Color? get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color? get secondaryBackground =>
      Theme.of(this).colorScheme.secondaryContainer;
  Color? get onSecondaryBackground =>
      Theme.of(this).colorScheme.onSecondaryContainer;
  Color? get secondary => Theme.of(this).colorScheme.secondary;
  Color? get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color? get tertiaryBackground => Theme.of(this).colorScheme.tertiaryContainer;
  Color? get onTertiaryBackground =>
      Theme.of(this).colorScheme.onTertiaryContainer;
  Color? get tertiary => Theme.of(this).colorScheme.tertiary;
  Color? get onTertiary => Theme.of(this).colorScheme.onTertiary;

  Color? get error => Theme.of(this).colorScheme.error;
  Color? get onError => Theme.of(this).colorScheme.onError;
  Color? get errorBackground => Theme.of(this).colorScheme.errorContainer;
  Color? get onErrorBackground => Theme.of(this).colorScheme.onErrorContainer;

  Color? get outline => Theme.of(this).colorScheme.outline;

  Color? get grey => Colors.grey;
}
