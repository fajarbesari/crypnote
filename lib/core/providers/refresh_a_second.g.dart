// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_a_second.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(refreshASecond)
final refreshASecondProvider = RefreshASecondProvider._();

final class RefreshASecondProvider
    extends
        $FunctionalProvider<AsyncValue<DateTime>, DateTime, Stream<DateTime>>
    with $FutureModifier<DateTime>, $StreamProvider<DateTime> {
  RefreshASecondProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshASecondProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshASecondHash();

  @$internal
  @override
  $StreamProviderElement<DateTime> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<DateTime> create(Ref ref) {
    return refreshASecond(ref);
  }
}

String _$refreshASecondHash() => r'80dce50c126ea6ba9865470bc118ebead1b044db';
