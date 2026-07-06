// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_editing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(textEditingController)
final textEditingControllerProvider = TextEditingControllerFamily._();

final class TextEditingControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  TextEditingControllerProvider._({
    required TextEditingControllerFamily super.from,
    required ({String label, VoidCallback? listener}) super.argument,
  }) : super(
         retry: null,
         name: r'textEditingControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$textEditingControllerHash();

  @override
  String toString() {
    return r'textEditingControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    final argument = this.argument as ({String label, VoidCallback? listener});
    return textEditingController(
      ref,
      label: argument.label,
      listener: argument.listener,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TextEditingControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$textEditingControllerHash() =>
    r'98368c42616ae197bac552f037ff2a53f12554d8';

final class TextEditingControllerFamily extends $Family
    with
        $FunctionalFamilyOverride<
          TextEditingController,
          ({String label, VoidCallback? listener})
        > {
  TextEditingControllerFamily._()
    : super(
        retry: null,
        name: r'textEditingControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TextEditingControllerProvider call({
    required String label,
    VoidCallback? listener,
  }) => TextEditingControllerProvider._(
    argument: (label: label, listener: listener),
    from: this,
  );

  @override
  String toString() => r'textEditingControllerProvider';
}
