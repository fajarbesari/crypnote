// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_profile_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentProfileImage)
final currentProfileImageProvider = CurrentProfileImageProvider._();

final class CurrentProfileImageProvider
    extends $NotifierProvider<CurrentProfileImage, AssetImage> {
  CurrentProfileImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentProfileImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentProfileImageHash();

  @$internal
  @override
  CurrentProfileImage create() => CurrentProfileImage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AssetImage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AssetImage>(value),
    );
  }
}

String _$currentProfileImageHash() =>
    r'f672a480fd29e787e0dcc3fb0f43ee831ee57ef6';

abstract class _$CurrentProfileImage extends $Notifier<AssetImage> {
  AssetImage build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AssetImage, AssetImage>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AssetImage, AssetImage>,
              AssetImage,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
