import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authentication/providers/current_user_controller.dart';
import '../domain/entities/crypnote.dart';
import '../../../core/locator_service.dart';
import '../domain/models/encryption_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_encryption_controller.g.dart';
part 'current_encryption_controller.freezed.dart';

@freezed
abstract class EncryptionState with _$EncryptionState {
  const factory EncryptionState({
    User? user,
    EncryptBox? encryptBox,
    ImportanceLevel? importanceLevel,
    bool? isLoading,
    String? error,
  }) = _EncryptionState;
}

@Riverpod(keepAlive: true)
class CurrentEncryptionController extends _$CurrentEncryptionController {
  final _encryption = locator<EncryptionModel>();

  @override
  EncryptionState build() {
    final user = ref.watch(currentUserControllerProvider).value;
    return EncryptionState(user: user);
  }

  Future<void> encryption(Crypnote crypnote, DateTime? scheduleAt) async {
    try {
      state = state.copyWith(isLoading: true);

      if (state.user == null || state.user?.id == null) {
        state = state.copyWith(error: 'Authenticated User Required !');
        return;
      }
      await Future.delayed(Duration(seconds: 3));

      final encryption = await _encryption.encryption(crypnote, scheduleAt);
      state = state.copyWith(encryptBox: encryption, isLoading: false);

      // to detruct current state
      ref
        ..invalidate(dashboardControllerProvider)
        ..invalidate(encryptBoxCollectionControllerProvider)
        ..invalidate(currentNearestEncryptBoxControllerProvider)
        ..invalidateSelf()
        ..keepAlive();
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  ImportanceLevel get importanceLevel => _encryption.importanceLevel;
  set importanceLevel(ImportanceLevel updated) {
    state = state.copyWith(importanceLevel: updated);
  }

  String get selectedSchedule => _encryption.selectedItemSchedule;
}
