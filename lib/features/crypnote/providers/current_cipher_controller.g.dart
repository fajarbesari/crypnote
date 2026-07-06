// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_cipher_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentCipherController)
final currentCipherControllerProvider = CurrentCipherControllerProvider._();

final class CurrentCipherControllerProvider
    extends $NotifierProvider<CurrentCipherController, CipherState> {
  CurrentCipherControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentCipherControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentCipherControllerHash();

  @$internal
  @override
  CurrentCipherController create() => CurrentCipherController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CipherState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CipherState>(value),
    );
  }
}

String _$currentCipherControllerHash() =>
    r'7d91044114f95c61f3f56971fc6cbb06be17b07e';

abstract class _$CurrentCipherController extends $Notifier<CipherState> {
  CipherState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CipherState, CipherState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CipherState, CipherState>,
              CipherState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
