// for implementing shell route, persisted navbar
import 'package:crypnote/features/crypnote/presentation/screens/modify_encryptor_screen.dart';
import 'package:crypnote/features/profile/presentation/screens/modify_profile_screen.dart';
import 'package:crypnote/features/profile/presentation/screens/profile_screen.dart';
import 'package:crypnote/features/profile/presentation/widgets/about_lisence_dialog.dart';
import 'package:crypnote/features/profile/presentation/widgets/logout_dialog.dart';

import '../features/crypnote/presentation/screens/create_encrypt_screen.dart';
import '../features/crypnote/presentation/screens/crypnote_screen.dart';
import '../features/crypnote/presentation/screens/encryptbox_collection_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({
    super.key,
    required this.statefulNavigationShell,
  });

  final StatefulNavigationShell statefulNavigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statefulNavigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => statefulNavigationShell.goBranch(value),
        currentIndex: statefulNavigationShell.currentIndex,
        items: [
          for (final nav in navbar)
            BottomNavigationBarItem(
              icon: nav.icon,
              activeIcon: nav.activatedIcon,
              label: nav.label,
            ),
        ],
      ),
    );
  }
}

final List<NavigationBottomBar> navbar = [
  NavigationBottomBar(
    path: '/crypnote',
    child: CrypnoteScreen(),
    label: 'Dashboard',
    icon: Icon(Icons.note_outlined),
    activatedIcon: Icon(Icons.note),
  ),
  NavigationBottomBar(
    path: '/encryption',
    child: EncryptionBoxCollectionScreen(),
    // child: CreateCrypnoteScreen(),
    label: 'Encryption',
    icon: Icon(Icons.enhanced_encryption_outlined),
    activatedIcon: Icon(Icons.enhanced_encryption),
    routes: [
      GoRoute(path: '/create', builder: (_, _) => CreateCrypnoteScreen()),
    ],
  ),
  NavigationBottomBar(
    path: '/profile',
    child: ProfileScreen(),
    label: 'Profile',
    icon: Icon(Icons.person_2_outlined),
    activatedIcon: Icon(Icons.person_2),
    routes: [
      GoRoute(
        path: '/aboutAndLisence',
        builder: (context, state) => AboutAndLisenceDialog(),
      ),
      GoRoute(
        path: '/modifyProfile',
        builder: (context, state) => ModifyProfileScreen(),
      ),
      GoRoute(
        path: '/modifyEncryptor',
        builder: (context, state) => ModifyEncryptorScreen(),
      ),
      GoRoute(path: '/logout', builder: (context, state) => LogoutDialog()),
    ],
  ),
];

class NavigationBottomBar {
  final String path;
  final Widget child;
  final String label;
  final Icon icon;
  final Icon activatedIcon;
  final List<GoRoute>? routes;

  NavigationBottomBar({
    required this.path,
    required this.child,
    required this.label,
    required this.icon,
    required this.activatedIcon,
    this.routes,
  });
}
