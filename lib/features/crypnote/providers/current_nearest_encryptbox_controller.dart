import 'dart:async';

import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/features/crypnote/domain/models/nearest_encryptbox_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_nearest_encryptbox_controller.g.dart';
part 'current_nearest_encryptbox_controller.freezed.dart';

@freezed
abstract class NearestEncryptBoxState with _$NearestEncryptBoxState {
  const factory NearestEncryptBoxState({
    EncryptBox? encryptBox,
    DateTime? scheduleAt,
    bool? isLoading,
    String? error,
  }) = _NearestEncryptBoxState;
}

@Riverpod(keepAlive: true)
class CurrentNearestEncryptBoxController
    extends _$CurrentNearestEncryptBoxController {
  final _nearest = locator<NearestEncryptBoxModel>();

  @override
  NearestEncryptBoxState build() {
    unawaited(get());

    return NearestEncryptBoxState();
  }

  Future<void> get() async {
    final userId = ref.watch(currentUserControllerProvider).value?.id;

    if (userId != null) {
      final near = await _nearest.get(userId);

      state = state.copyWith(encryptBox: near, scheduleAt: near?.scheduleAt);
    }
  }

  Future<void> refresh() async => ref.invalidateSelf();

  Future<void> destroy(EncryptBox encryptBox) async {
    await _nearest.destroy(encryptBox);

    state = state.copyWith(encryptBox: null, scheduleAt: null);

    ref
      ..invalidate(dashboardControllerProvider)
      ..invalidate(encryptBoxCollectionControllerProvider);
  }
}
