// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_theme_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentThemeController)
final currentThemeControllerProvider = CurrentThemeControllerProvider._();

final class CurrentThemeControllerProvider
    extends $NotifierProvider<CurrentThemeController, CrypnoteThemeMode> {
  CurrentThemeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentThemeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentThemeControllerHash();

  @$internal
  @override
  CurrentThemeController create() => CurrentThemeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CrypnoteThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CrypnoteThemeMode>(value),
    );
  }
}

String _$currentThemeControllerHash() =>
    r'2491d4803404c7df72da0dad0b1f3b2ede6380f0';

abstract class _$CurrentThemeController extends $Notifier<CrypnoteThemeMode> {
  CrypnoteThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CrypnoteThemeMode, CrypnoteThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CrypnoteThemeMode, CrypnoteThemeMode>,
              CrypnoteThemeMode,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
