// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_auth_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentAuthNotifier)
final currentAuthProvider = CurrentAuthNotifierProvider._();

final class CurrentAuthNotifierProvider
    extends $NotifierProvider<CurrentAuthNotifier, AuthGuard> {
  CurrentAuthNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentAuthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentAuthNotifierHash();

  @$internal
  @override
  CurrentAuthNotifier create() => CurrentAuthNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthGuard value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthGuard>(value),
    );
  }
}

String _$currentAuthNotifierHash() =>
    r'264e93277dfc51fabd2eaea3e30a357d7a7b06cc';

abstract class _$CurrentAuthNotifier extends $Notifier<AuthGuard> {
  AuthGuard build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AuthGuard, AuthGuard>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthGuard, AuthGuard>,
              AuthGuard,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
