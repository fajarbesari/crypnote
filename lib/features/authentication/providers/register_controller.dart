import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/entities/lang.dart';
import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/locator_service.dart';
import '../domain/models/register_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';
part 'register_controller.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    bool? isAuthenticated,
    User? user,
    @Default('') String? usernameValidation,
    @Default('') String? passwordValidation,
    @Default(true) bool isObsecure,
    bool? isLoading,
    String? error,
  }) = _RegisterState;
}

@riverpod
class RegisterController extends _$RegisterController {
  final _register = locator<RegisterModel>();

  @override
  RegisterState build() {
    return RegisterState();
  }

  Lang? get lang =>
      ref.read(currentLanguageControllerProvider.notifier).current;

  String? usernameValidator(String? value) {
    final result = _register.usernameValidator(
      value,
      lang!.emptyUsernameValidation,
      lang!.charUsernameValidation,
    );
    // ignore: discarded_futures
    Future.microtask(() {
      state = state.copyWith(usernameValidation: result);
    });
    return result;
  }

  String? passwordValidator(String? value) {
    final result = _register.passwordValidator(
      value,
      lang!.emptyPasswordValidation,
      lang!.charPasswordValidation,
    );
    // ignore: discarded_futures
    Future.microtask(() {
      state = state.copyWith(passwordValidation: result);
    });
    return result;
  }

  bool get obsecure => _register.obsecurePassword;

  void obsecureToggle() {
    final obsecure = _register.obsecureModify();

    state = state.copyWith(isObsecure: obsecure);
  }
}
