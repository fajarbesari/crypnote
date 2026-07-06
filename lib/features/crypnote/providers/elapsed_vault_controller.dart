import 'dart:async';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/features/crypnote/domain/models/encryptbox_collection_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'elapsed_vault_controller.g.dart';

@riverpod
class ElapsedVaultController extends _$ElapsedVaultController {
  final _collection = locator<EncryptBoxCollectionModel>();

  @override
  List<EncryptBox> build() {
    unawaited(get());
    return [];
  }

  Future<void> get() async {
    final userId = ref.watch(currentUserControllerProvider).value?.id;

    if (userId != null) {
      final encryptBoxes = await _collection.get(userId);

      state = encryptBoxes
          .where(
            (e) =>
                e.scheduleAt != null && e.scheduleAt!.isBefore(DateTime.now()),
          )
          .toList();
    }
  }
}
