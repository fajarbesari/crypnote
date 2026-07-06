// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recycle_encryptbox_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecycleEncryptBoxController)
final recycleEncryptBoxControllerProvider =
    RecycleEncryptBoxControllerProvider._();

final class RecycleEncryptBoxControllerProvider
    extends $NotifierProvider<RecycleEncryptBoxController, List<EncryptBox>> {
  RecycleEncryptBoxControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recycleEncryptBoxControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recycleEncryptBoxControllerHash();

  @$internal
  @override
  RecycleEncryptBoxController create() => RecycleEncryptBoxController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<EncryptBox> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<EncryptBox>>(value),
    );
  }
}

String _$recycleEncryptBoxControllerHash() =>
    r'2eae14483755987b8e3f371b282f9bfba7f70337';

abstract class _$RecycleEncryptBoxController
    extends $Notifier<List<EncryptBox>> {
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
