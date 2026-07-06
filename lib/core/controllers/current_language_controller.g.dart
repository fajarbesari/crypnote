// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_language_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentLanguageController)
final currentLanguageControllerProvider = CurrentLanguageControllerProvider._();

final class CurrentLanguageControllerProvider
    extends $NotifierProvider<CurrentLanguageController, Lang?> {
  CurrentLanguageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLanguageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLanguageControllerHash();

  @$internal
  @override
  CurrentLanguageController create() => CurrentLanguageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Lang? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Lang?>(value),
    );
  }
}

String _$currentLanguageControllerHash() =>
    r'b772a6f0d424eb663a2b4387132097864e7e3ffd';

abstract class _$CurrentLanguageController extends $Notifier<Lang?> {
  Lang? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Lang?, Lang?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Lang?, Lang?>,
              Lang?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
