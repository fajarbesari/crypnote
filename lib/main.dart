import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/router/router_provider.dart';
import 'package:crypnote/features/crypnote/providers/current_localization_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'features/profile/providers/current_theme_controller.dart';
import 'core/locator_service.dart';
import 'core/utils/crypnote_theme.dart';
import 'core/usesCase/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  CurrentLocalizationController.initializeFormattedDateTime();

  // initialize singleton service
  // implement one service for all
  await initializeServices();

  await locator.allReady();

  runApp(
    ProviderScope(
      observers: [
        // AppProviderObserver()
      ],
      child: CrypnoteApp(),
    ),
  );
}

class CrypnoteApp extends ConsumerWidget {
  const CrypnoteApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _EigerInitialization(child: _MainApp());
  }
}

class _EigerInitialization extends HookConsumerWidget {
  const _EigerInitialization({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(currentLanguageControllerProvider.notifier).initialize();

    // whenever your initialization is completed, remove the splash screen:
    FlutterNativeSplash.remove();
    return child;
  }
}

class _MainApp extends ConsumerWidget {
  // ignore: unused_element_parameter
  const _MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CrypnoteTheme theme = CrypnoteTheme();

    Brightness brightness = PlatformDispatcher.instance.platformBrightness;

    final themeMode = ref.watch(currentThemeControllerProvider);

    final route = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: route,
      theme:
          brightness == Brightness.light && themeMode == CrypnoteThemeMode.light
          ? theme.light()
          : theme.dark(),
      darkTheme: theme.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
