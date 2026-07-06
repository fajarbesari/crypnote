import 'dart:async';

import '../../../core/locator_service.dart';
import '../../../core/usesCase/theme_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_theme_controller.g.dart';

@riverpod
class CurrentThemeController extends _$CurrentThemeController {
  final _theme = locator<ThemeModel>();

  @override
  CrypnoteThemeMode build() {
    unawaited(initialize());
    return CrypnoteThemeMode.light;
  }

  CrypnoteThemeMode get current => _theme.currentMode;

  Future<void> initialize() async {
    final theme = await _theme.initialize();
    state = theme;
  }

  Future<void> togleTheme() async {
    final theme = await _theme.toggleTheme();

    state = theme;
  }
}
