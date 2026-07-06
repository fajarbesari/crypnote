// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decryption_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DecryptionController)
final decryptionControllerProvider = DecryptionControllerProvider._();

final class DecryptionControllerProvider
    extends $NotifierProvider<DecryptionController, DecryptionState> {
  DecryptionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'decryptionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$decryptionControllerHash();

  @$internal
  @override
  DecryptionController create() => DecryptionController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DecryptionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DecryptionState>(value),
    );
  }
}

String _$decryptionControllerHash() =>
    r'89d10f5137fcad7e7a1563098d21274c9ad11954';

abstract class _$DecryptionController extends $Notifier<DecryptionState> {
  DecryptionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DecryptionState, DecryptionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DecryptionState, DecryptionState>,
              DecryptionState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
