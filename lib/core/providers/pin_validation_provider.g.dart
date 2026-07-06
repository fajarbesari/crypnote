// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_validation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pinValidation)
final pinValidationProvider = PinValidationProvider._();

final class PinValidationProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  PinValidationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pinValidationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pinValidationHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return pinValidation(ref);
  }
}

String _$pinValidationHash() => r'39ecc1cbb0d0779bbafb9fd7f9467cc79a43309c';
