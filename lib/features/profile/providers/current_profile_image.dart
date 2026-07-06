import 'dart:async';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/features/authentication/domain/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_profile_image.g.dart';

@riverpod
class CurrentProfileImage extends _$CurrentProfileImage {
  final _user = locator<UserModel>();

  @override
  AssetImage build() {
    unawaited(initialize());
    return AssetImage('assets/avatars/avatar_1.png');
  }

  List<AssetImage> get assets => _user.getProfileImages();

  Future<void> initialize() async {
    final asset = await _user.initializeProfile();

    if (asset != null) {
      state = asset;
    }
  }

  Future<void> changeProfile(AssetImage updatedImage) async {
    final updated = await _user.modifiyProfile(updatedImage);
    state = updated;
  }
}
