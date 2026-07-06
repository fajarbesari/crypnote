import 'dart:async';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/features/crypnote/domain/models/encryptbox_collection_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recycle_encryptbox_controller.g.dart';

@riverpod
class RecycleEncryptBoxController extends _$RecycleEncryptBoxController {
  final _collection = locator<EncryptBoxCollectionModel>();

  @override
  List<EncryptBox> build() {
    unawaited(get());
    return [];
  }

  Future<void> get() async {
    final userId = ref.watch(currentUserControllerProvider).value?.id;

    if (userId != null) {
      state = await _collection.recycle(userId);
    }
  }

  Future<void> restoreById(int id) async {
    await _collection.restoreById(id);

    ref
      ..invalidate(encryptBoxCollectionControllerProvider)
      ..invalidate(dashboardControllerProvider)
      ..invalidate(currentNearestEncryptBoxControllerProvider)
      ..invalidateSelf();
  }

  Future<void> destroyById(int id) async {
    final deletedId = await _collection.destroyById(id);

    state = state.where((e) => e.id != deletedId).toList();

    ref
      ..invalidate(dashboardControllerProvider)
      ..invalidateSelf();
  }
}
