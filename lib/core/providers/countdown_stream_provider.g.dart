// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(countdown)
final countdownProvider = CountdownFamily._();

final class CountdownProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  CountdownProvider._({
    required CountdownFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'countdownProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$countdownHash();

  @override
  String toString() {
    return r'countdownProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    final argument = this.argument as DateTime;
    return countdown(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CountdownProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$countdownHash() => r'9f5d88f9d0ce0873a6b8d4d24b454fea043182c3';

final class CountdownFamily extends $Family
    with $FunctionalFamilyOverride<Stream<String>, DateTime> {
  CountdownFamily._()
    : super(
        retry: null,
        name: r'countdownProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CountdownProvider call(DateTime until) =>
      CountdownProvider._(argument: until, from: this);

  @override
  String toString() => r'countdownProvider';
}
