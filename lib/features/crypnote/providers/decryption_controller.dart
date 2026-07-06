import 'dart:async';
import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/features/authentication/domain/entities/pin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authentication/providers/current_user_controller.dart';
import '../domain/entities/encryptbox.dart';
import '../../../core/locator_service.dart';
import '../domain/models/decryption_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'decryption_controller.g.dart';
part 'decryption_controller.freezed.dart';

@freezed
abstract class DecryptionState with _$DecryptionState {
  const factory DecryptionState({
    EncryptBox? encryptBox,
    Crypnote? crypnote,
    Pin? pin,
    bool? isPinValid,
    bool? isLoading,
    String? error,
  }) = _DecryptionState;
}

@riverpod
class DecryptionController extends _$DecryptionController {
  final _decryption = locator<DecryptionModel>();

  @override
  DecryptionState build() {
    final pin = ref.watch(currentUserControllerProvider).value?.pin;

    return DecryptionState(pin: pin);
  }

  Future<void> pinValidation(String? pin) async {
    final user = ref.watch(currentUserControllerProvider);

    switch (user) {
      case AsyncLoading<User?>():
        state = state.copyWith(isLoading: true);
      case AsyncData<User?>(:final value):
        final valid = await _decryption.pinValidation(pin, value!);
        state = state.copyWith(isPinValid: valid);
      case AsyncError<User?>(:final error):
        state = state.copyWith(error: error.toString());
    }
  }

  String? pinValidator(String? value) {
    if (value == null || value.isEmpty) return '';
    if (value.length < 7) return '';
    return null;
  }

  Future<void> decryption(EncryptBox encryptBox) async {
    state = state.copyWith(isLoading: true, isPinValid: false);

    await Future.delayed(Duration(seconds: 3));

    final latestDecryption = await _decryption.updatedLatestDecryption(
      encryptBox.id!,
      encryptBox.copyWith(latestDecryptionAt: DateTime.now()),
    );
    final crypnote = await _decryption.decryptById(latestDecryption.id!);

    if (!ref.mounted) return;

    state = state.copyWith(
      encryptBox: latestDecryption,
      crypnote: crypnote,
      isLoading: false,
    );

    ref
      ..invalidate(dashboardControllerProvider)
      ..invalidate(encryptBoxCollectionControllerProvider);
  }

  Future<void> updatedCompleted(bool completed) async {
    final encryptBox = state.encryptBox;
    final currentCrypnote = state.crypnote;

    if (currentCrypnote == null) return;
    if (encryptBox == null) return;

    final updatedCrypnote = currentCrypnote.copyWith(isCompleted: completed);

    final updatedEncryptBox = await _decryption.updatedCompletation(
      encryptBox.id!,
      updatedCrypnote,
    );

    state = state.copyWith(
      crypnote: updatedCrypnote,
      encryptBox: updatedEncryptBox,
    );
  }
}
