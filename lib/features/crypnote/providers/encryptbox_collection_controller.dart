import 'dart:async';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/providers/recycle_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/locator_service.dart';
import '../domain/models/encryptbox_collection_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'encryptbox_collection_controller.g.dart';
part 'encryptbox_collection_controller.freezed.dart';

@freezed
abstract class EncryptBoxCollectionState with _$EncryptBoxCollectionState {
  const factory EncryptBoxCollectionState({
    List<EncryptBox>? encryptBoxCollection,
    EncryptBox? encryptBox,
    bool? isPinValid,
    bool? isLoading,
    String? error,
  }) = _EncryptBoxCollectionState;
}

@riverpod
class EncryptBoxCollectionController extends _$EncryptBoxCollectionController {
  final _collection = locator<EncryptBoxCollectionModel>();

  @override
  EncryptBoxCollectionState build() {
    unawaited(get());
    return EncryptBoxCollectionState();
  }

  Future<void> get() async {
    final userId = ref.watch(currentUserControllerProvider).value?.id;

    if (userId != null) {
      final data = await _collection.get(userId);
      state = state.copyWith(encryptBoxCollection: data);
    }
  }

  Future<void> deleteById(int id) async {
    await _collection.deleteById(id);
    ref
      ..invalidate(recycleEncryptBoxControllerProvider)
      ..invalidate(dashboardControllerProvider)
      ..invalidateSelf();
  }
}
