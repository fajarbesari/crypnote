import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/locator_service.dart';
import '../domain/models/login_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';
part 'login_controller.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    User? user,
    bool? isAuthenticated,
    @Default(true) bool isObsecure,
    bool? isLoading,
    String? error,
  }) = _LoginState;
}

@riverpod
class LoginController extends _$LoginController {
  final LoginModel _loginModel = locator<LoginModel>();

  @override
  LoginState build() {
    return LoginState();
  }

  bool get obsecure => _loginModel.obsecurePassword;

  void obsecureToggle() {
    final obsecure = _loginModel.obsecureModify();
    state = state.copyWith(isObsecure: obsecure);
  }
}
