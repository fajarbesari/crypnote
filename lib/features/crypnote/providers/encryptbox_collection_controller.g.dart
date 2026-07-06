// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encryptbox_collection_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EncryptBoxCollectionController)
final encryptBoxCollectionControllerProvider =
    EncryptBoxCollectionControllerProvider._();

final class EncryptBoxCollectionControllerProvider
    extends
        $NotifierProvider<
          EncryptBoxCollectionController,
          EncryptBoxCollectionState
        > {
  EncryptBoxCollectionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'encryptBoxCollectionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$encryptBoxCollectionControllerHash();

  @$internal
  @override
  EncryptBoxCollectionController create() => EncryptBoxCollectionController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EncryptBoxCollectionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EncryptBoxCollectionState>(value),
    );
  }
}

String _$encryptBoxCollectionControllerHash() =>
    r'ea4801d4f2c86e068cf493909cbbd82310485eba';

abstract class _$EncryptBoxCollectionController
    extends $Notifier<EncryptBoxCollectionState> {
  EncryptBoxCollectionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<EncryptBoxCollectionState, EncryptBoxCollectionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EncryptBoxCollectionState, EncryptBoxCollectionState>,
              EncryptBoxCollectionState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
