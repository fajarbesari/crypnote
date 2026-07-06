import 'dart:async';
import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entities/login.dart';
import '../../../core/locator_service.dart';
import '../domain/models/auth_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';
part 'auth_controller.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    bool? isAuthenticated,
    User? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _AuthState;
}

@riverpod
class AuthStateController extends _$AuthStateController {
  final AuthModel _auth = locator<AuthModel>();

  @override
  AuthState build() {
    unawaited(initialize());
    return AuthState();
  }

  void relog() => state = state.copyWith(isAuthenticated: false);

  Future<void> initialize() async {
    try {
      final user = await _auth.get();

      state = switch (user) {
        User() => state.copyWith(isAuthenticated: true, user: user),
        null => state.copyWith(isAuthenticated: false, user: null),
      };
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> register(Login login) async {
    try {
      state = state.copyWith(isLoading: true);

      final user = await _auth.registration(login);

      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false, user: null);
    }
  }

  Future<void> logout() async {
    try {
      state = state.copyWith(isLoading: true);
      _auth.deletation();
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: false,
        user: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        error: e.toString(),
      );
    }
  }

  Future<void> login(Login login) async {
    try {
      state = state.copyWith(isLoading: true);

      final user = await _auth.authentication(login);

      state = switch (user) {
        User() => state.copyWith(
          isAuthenticated: true,
          user: user,
          isLoading: false,
        ),
        null => state.copyWith(
          isAuthenticated: false,
          user: null,
          isLoading: false,
        ),
      };
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
        isAuthenticated: false,
      );
    }
  }
}
