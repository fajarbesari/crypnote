// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_nearest_encryptbox_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentNearestEncryptBoxController)
final currentNearestEncryptBoxControllerProvider =
    CurrentNearestEncryptBoxControllerProvider._();

final class CurrentNearestEncryptBoxControllerProvider
    extends
        $NotifierProvider<
          CurrentNearestEncryptBoxController,
          NearestEncryptBoxState
        > {
  CurrentNearestEncryptBoxControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentNearestEncryptBoxControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$currentNearestEncryptBoxControllerHash();

  @$internal
  @override
  CurrentNearestEncryptBoxController create() =>
      CurrentNearestEncryptBoxController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NearestEncryptBoxState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NearestEncryptBoxState>(value),
    );
  }
}

String _$currentNearestEncryptBoxControllerHash() =>
    r'3d24dbc326b822f9c6adf780af729708d35c4e2a';

abstract class _$CurrentNearestEncryptBoxController
    extends $Notifier<NearestEncryptBoxState> {
  NearestEncryptBoxState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<NearestEncryptBoxState, NearestEncryptBoxState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NearestEncryptBoxState, NearestEncryptBoxState>,
              NearestEncryptBoxState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
