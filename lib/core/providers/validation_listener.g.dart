// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_listener.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(validationListener)
final validationListenerProvider = ValidationListenerFamily._();

final class ValidationListenerProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, Stream<String?>>
    with $FutureModifier<String?>, $StreamProvider<String?> {
  ValidationListenerProvider._({
    required ValidationListenerFamily super.from,
    required (Validator, String) super.argument,
  }) : super(
         retry: null,
         name: r'validationListenerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$validationListenerHash();

  @override
  String toString() {
    return r'validationListenerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $StreamProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String?> create(Ref ref) {
    final argument = this.argument as (Validator, String);
    return validationListener(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ValidationListenerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$validationListenerHash() =>
    r'2d6a213741b714d0e0465000a55ac10a86e64cfb';

final class ValidationListenerFamily extends $Family
    with $FunctionalFamilyOverride<Stream<String?>, (Validator, String)> {
  ValidationListenerFamily._()
    : super(
        retry: null,
        name: r'validationListenerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ValidationListenerProvider call(Validator validator, String id) =>
      ValidationListenerProvider._(argument: (validator, id), from: this);

  @override
  String toString() => r'validationListenerProvider';
}
