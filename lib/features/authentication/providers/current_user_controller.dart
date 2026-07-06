import 'dart:async';
import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/entities/lang.dart';
import 'package:crypnote/core/usesCase/validator_use_case.dart';
import 'package:crypnote/features/crypnote/providers/decryption_controller.dart';
import 'auth_controller.dart';
import '../domain/entities/user.dart';
import '../../../core/exceptions/crypnote_exception.dart';
import '../../../core/locator_service.dart';
import '../domain/models/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_controller.g.dart';

@riverpod
class CurrentUserController extends _$CurrentUserController {
  final _user = locator<UserModel>();
  final _validator = locator<ValidatorUseCase>();

  @override
  Future<User?> build() async {
    final userId = ref.watch(authStateControllerProvider).user?.id;

    if (userId == null) {
      ref.read(authStateControllerProvider.notifier).relog();
    }

    final currentUser = await _user.getById(userId!);

    return currentUser;
  }

  String get pinId => 'pin-id';
  String get usernameId => 'username-id';
  String get firstnameId => 'firstname-id';
  String get lastnameId => 'lastname-id';

  Lang? get lang =>
      ref.read(currentLanguageControllerProvider.notifier).current;

  String? usernameValidator(String? value) {
    return _user.usernameValidator(
      value,
      lang!.emptyUsernameValidation,
      lang!.charUsernameValidation,
    );
  }

  String? pinValidator(String? value) {
    return _validator.pinValidator(value);
  }

  Future<void> modifyUsername(String username) async {
    try {
      state = const AsyncValue.loading();

      state = await AsyncValue.guard(() async {
        return await _user.modifyUsername(state.value!.id!, username);
      });
    } catch (e) {
      throw CrypnoteException('Could not modify username');
    }
  }

  Future<void> modifyName({String? firstname, String? lastname}) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return await _user.modifyName(
        id: state.value!.id!,
        firstname: firstname ?? state.value?.firstname,
        lastname: lastname ?? state.value?.lastname,
      );
    });
  }

  Future<void> createPin(String pin) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final updated = await _user.createPin(pin, state.value!);
      return updated;
    });

    ref.invalidate(decryptionControllerProvider);
  }
}
