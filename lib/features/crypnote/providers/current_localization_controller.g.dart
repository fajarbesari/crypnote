// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_localization_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentLocalizationController)
final currentLocalizationControllerProvider =
    CurrentLocalizationControllerProvider._();

final class CurrentLocalizationControllerProvider
    extends $NotifierProvider<CurrentLocalizationController, Locale?> {
  CurrentLocalizationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLocalizationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLocalizationControllerHash();

  @$internal
  @override
  CurrentLocalizationController create() => CurrentLocalizationController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale?>(value),
    );
  }
}

String _$currentLocalizationControllerHash() =>
    r'0c4fdd15758ad7fa22e5306f14e8dbdbea84d1ac';

abstract class _$CurrentLocalizationController extends $Notifier<Locale?> {
  Locale? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Locale?, Locale?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Locale?, Locale?>,
              Locale?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
