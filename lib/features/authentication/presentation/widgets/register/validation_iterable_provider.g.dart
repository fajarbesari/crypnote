// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_iterable_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(passwordValidation)
final passwordValidationProvider = PasswordValidationFamily._();

final class PasswordValidationProvider
    extends
        $FunctionalProvider<
          Iterable<String?>,
          Iterable<String?>,
          Iterable<String?>
        >
    with $Provider<Iterable<String?>> {
  PasswordValidationProvider._({
    required PasswordValidationFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'passwordValidationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$passwordValidationHash();

  @override
  String toString() {
    return r'passwordValidationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Iterable<String?>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Iterable<String?> create(Ref ref) {
    final argument = this.argument as String;
    return passwordValidation(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Iterable<String?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Iterable<String?>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PasswordValidationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$passwordValidationHash() =>
    r'0a6691ba69497a59362b4c26851004f4765cd6ae';

final class PasswordValidationFamily extends $Family
    with $FunctionalFamilyOverride<Iterable<String?>, String> {
  PasswordValidationFamily._()
    : super(
        retry: null,
        name: r'passwordValidationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PasswordValidationProvider call(String label) =>
      PasswordValidationProvider._(argument: label, from: this);

  @override
  String toString() => r'passwordValidationProvider';
}
