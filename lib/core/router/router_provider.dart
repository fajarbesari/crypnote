import 'package:crypnote/features/crypnote/presentation/screens/elapsed_encryptbox.dart';
import 'package:crypnote/features/crypnote/presentation/screens/recycle_collection_screen.dart';

import '../../features/authentication/providers/current_auth_notifier.dart';
import '../../features/crypnote/presentation/screens/create_pin_dialog.dart';
import '../../features/crypnote/presentation/screens/decryption_screen.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/crypnote/presentation/widgets/encryptbox_collection/pin_dialog.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../widgets/scaffold_with_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final refreshable = ValueNotifier<AuthGuard>(AuthGuard.unknown);

  ref
    ..onDispose(refreshable.dispose)
    ..listen(currentAuthProvider, (_, value) {
      refreshable.value = value;
    });

  final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(path: '/', builder: (context, state) => Scaffold()),
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
      GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
      GoRoute(
        path: '/createPin',
        builder: (context, state) => CreatePinScreen(),
      ),
      GoRoute(
        path: '/validatePin',
        builder: (context, state) => PinDialogDecryption(),
      ),
      GoRoute(
        path: '/decryption',
        builder: (context, state) => DecryptionScreen(),
      ),
      GoRoute(
        path: '/encryption/recycle',
        builder: (context, state) => RecycleCollectionScreen(),
      ),
      GoRoute(
        path: '/elapsedEncryptBox',
        builder: (context, state) => ElapsedCrypnoteScreen(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (_, _, s) =>
            ScaffoldWithNavigation(statefulNavigationShell: s),
        branches: [
          for (final nav in navbar)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: nav.path,
                  builder: (_, _) => nav.child,
                  routes: [
                    if (nav.routes != null) ...[
                      for (final nesnav in nav.routes!)
                        GoRoute(path: nesnav.path, builder: nesnav.builder),
                    ],
                  ],
                ),
              ],
            ),
        ],
      ),
    ],

    redirect: (_, state) {
      print(refreshable.value);
      if (!refreshable.value.allowedPath.contains(state.fullPath)) {
        return refreshable.value.redirectPath;
      }

      return null;
    },
    refreshListenable: refreshable,
    errorBuilder: (_, _) => SizedBox(),
  );

  return router;
}
