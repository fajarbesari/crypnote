// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recycle_encryptbox_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getRecycleEncryptBox)
final getRecycleEncryptBoxProvider = GetRecycleEncryptBoxProvider._();

final class GetRecycleEncryptBoxProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EncryptBox>>,
          List<EncryptBox>,
          FutureOr<List<EncryptBox>>
        >
    with $FutureModifier<List<EncryptBox>>, $FutureProvider<List<EncryptBox>> {
  GetRecycleEncryptBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getRecycleEncryptBoxProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getRecycleEncryptBoxHash();

  @$internal
  @override
  $FutureProviderElement<List<EncryptBox>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EncryptBox>> create(Ref ref) {
    return getRecycleEncryptBox(ref);
  }
}

String _$getRecycleEncryptBoxHash() =>
    r'060613cee6097d5960d8a472d7161303116484f8';
