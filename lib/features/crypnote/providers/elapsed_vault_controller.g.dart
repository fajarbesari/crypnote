// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elapsed_vault_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ElapsedVaultController)
final elapsedVaultControllerProvider = ElapsedVaultControllerProvider._();

final class ElapsedVaultControllerProvider
    extends $NotifierProvider<ElapsedVaultController, List<EncryptBox>> {
  ElapsedVaultControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'elapsedVaultControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$elapsedVaultControllerHash();

  @$internal
  @override
  ElapsedVaultController create() => ElapsedVaultController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<EncryptBox> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<EncryptBox>>(value),
    );
  }
}

String _$elapsedVaultControllerHash() =>
    r'de3254ba5ce7712ce4a5d523b5cedb62dfdc93ce';

abstract class _$ElapsedVaultController extends $Notifier<List<EncryptBox>> {
  List<EncryptBox> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<EncryptBox>, List<EncryptBox>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<EncryptBox>, List<EncryptBox>>,
              List<EncryptBox>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
