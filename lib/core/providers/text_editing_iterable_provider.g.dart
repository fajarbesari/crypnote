// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_editing_iterable_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(textEditingIterable)
final textEditingIterableProvider = TextEditingIterableFamily._();

final class TextEditingIterableProvider
    extends
        $FunctionalProvider<
          Iterable<String?>,
          Iterable<String?>,
          Iterable<String?>
        >
    with $Provider<Iterable<String?>> {
  TextEditingIterableProvider._({
    required TextEditingIterableFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'textEditingIterableProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$textEditingIterableHash();

  @override
  String toString() {
    return r'textEditingIterableProvider'
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
    return textEditingIterable(ref, argument);
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
    return other is TextEditingIterableProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$textEditingIterableHash() =>
    r'f99d4b94bc558a1511dde5b8168986c887e4a18c';

final class TextEditingIterableFamily extends $Family
    with $FunctionalFamilyOverride<Iterable<String?>, String> {
  TextEditingIterableFamily._()
    : super(
        retry: null,
        name: r'textEditingIterableProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TextEditingIterableProvider call(String id) =>
      TextEditingIterableProvider._(argument: id, from: this);

  @override
  String toString() => r'textEditingIterableProvider';
}
