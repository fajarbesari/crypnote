// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_encryption_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentEncryptionController)
final currentEncryptionControllerProvider =
    CurrentEncryptionControllerProvider._();

final class CurrentEncryptionControllerProvider
    extends $NotifierProvider<CurrentEncryptionController, EncryptionState> {
  CurrentEncryptionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentEncryptionControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentEncryptionControllerHash();

  @$internal
  @override
  CurrentEncryptionController create() => CurrentEncryptionController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EncryptionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EncryptionState>(value),
    );
  }
}

String _$currentEncryptionControllerHash() =>
    r'a0ee6653d5cf09ae9f08e7f905d8d50f694e71e8';

abstract class _$CurrentEncryptionController
    extends $Notifier<EncryptionState> {
  EncryptionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EncryptionState, EncryptionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EncryptionState, EncryptionState>,
              EncryptionState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
