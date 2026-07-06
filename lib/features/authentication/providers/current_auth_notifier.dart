import 'auth_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_auth_notifier.g.dart';

enum AuthGuard {
  authenticated('/crypnote', [
    '/crypnote',
    '/encryption',
    '/encryption/create',
    '/encryption/recycle',
    '/settings',
    '/decryption',
    '/createPin',
    '/validatePin',
    '/profile',
    '/profile/privacyPolicy',
    '/profile/modifyProfile',
    '/profile/modifyEncryptor',
    '/profile/logout',
    '/elapsedEncryptBox',
  ]),

  unauthenticated('/login', ['/login', '/register']),

  unknown('/login', ['/login', '/register']);

  const AuthGuard(this.redirectPath, this.allowedPath);

  final String redirectPath;
  final List<String> allowedPath;
}

@riverpod
class CurrentAuthNotifier extends _$CurrentAuthNotifier {
  @override
  AuthGuard build() {
    final auth = ref.watch(authStateControllerProvider);

    return auth.isAuthenticated == true
        ? AuthGuard.authenticated
        : AuthGuard.unauthenticated;
  }
}
