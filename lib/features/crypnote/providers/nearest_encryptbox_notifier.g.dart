// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearest_encryptbox_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NearestEncryptBoxNotifier)
final nearestEncryptBoxProvider = NearestEncryptBoxNotifierProvider._();

final class NearestEncryptBoxNotifierProvider
    extends $StreamNotifierProvider<NearestEncryptBoxNotifier, NearestFlow> {
  NearestEncryptBoxNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nearestEncryptBoxProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nearestEncryptBoxNotifierHash();

  @$internal
  @override
  NearestEncryptBoxNotifier create() => NearestEncryptBoxNotifier();
}

String _$nearestEncryptBoxNotifierHash() =>
    r'05ade933bca293b710e50101b0928ab368936cde';

abstract class _$NearestEncryptBoxNotifier
    extends $StreamNotifier<NearestFlow> {
  Stream<NearestFlow> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<NearestFlow>, NearestFlow>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NearestFlow>, NearestFlow>,
              AsyncValue<NearestFlow>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
