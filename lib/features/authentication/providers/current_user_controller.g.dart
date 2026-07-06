// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentUserController)
final currentUserControllerProvider = CurrentUserControllerProvider._();

final class CurrentUserControllerProvider
    extends $AsyncNotifierProvider<CurrentUserController, User?> {
  CurrentUserControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserControllerHash();

  @$internal
  @override
  CurrentUserController create() => CurrentUserController();
}

String _$currentUserControllerHash() =>
    r'f430dbdf44259f24cf5286c417814c2b5f765ee3';

abstract class _$CurrentUserController extends $AsyncNotifier<User?> {
  FutureOr<User?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<User?>, User?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<User?>, User?>,
              AsyncValue<User?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
