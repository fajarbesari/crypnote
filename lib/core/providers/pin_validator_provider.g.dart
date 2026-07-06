// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_validator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pinValidator)
final pinValidatorProvider = PinValidatorFamily._();

final class PinValidatorProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, Stream<String?>>
    with $FutureModifier<String?>, $StreamProvider<String?> {
  PinValidatorProvider._({
    required PinValidatorFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pinValidatorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pinValidatorHash();

  @override
  String toString() {
    return r'pinValidatorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String?> create(Ref ref) {
    final argument = this.argument as String;
    return pinValidator(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PinValidatorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pinValidatorHash() => r'faf69a160faea472ffde48c68e103b9c29446222';

final class PinValidatorFamily extends $Family
    with $FunctionalFamilyOverride<Stream<String?>, String> {
  PinValidatorFamily._()
    : super(
        retry: null,
        name: r'pinValidatorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PinValidatorProvider call(String id) =>
      PinValidatorProvider._(argument: id, from: this);

  @override
  String toString() => r'pinValidatorProvider';
}
