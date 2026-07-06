// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_duration_countdown.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(countDownDuration)
final countDownDurationProvider = CountDownDurationFamily._();

final class CountDownDurationProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, Stream<String?>>
    with $FutureModifier<String?>, $StreamProvider<String?> {
  CountDownDurationProvider._({
    required CountDownDurationFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'countDownDurationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$countDownDurationHash();

  @override
  String toString() {
    return r'countDownDurationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String?> create(Ref ref) {
    final argument = this.argument as DateTime;
    return countDownDuration(ref, until: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CountDownDurationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$countDownDurationHash() => r'f210f2669210bfba6943efac0fc934428fb79dd2';

final class CountDownDurationFamily extends $Family
    with $FunctionalFamilyOverride<Stream<String?>, DateTime> {
  CountDownDurationFamily._()
    : super(
        retry: null,
        name: r'countDownDurationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CountDownDurationProvider call({required DateTime until}) =>
      CountDownDurationProvider._(argument: until, from: this);

  @override
  String toString() => r'countDownDurationProvider';
}
