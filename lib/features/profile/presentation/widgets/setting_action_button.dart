import 'dart:async';

import 'package:crypnote/features/crypnote/presentation/screens/modify_encryptor_screen.dart';
import 'package:crypnote/features/profile/presentation/screens/modify_profile_screen.dart';
import 'package:crypnote/features/profile/presentation/widgets/about_lisence_dialog.dart';
import 'package:crypnote/features/profile/presentation/widgets/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SettingPopMenuRouteType { navigator, dialog }

enum SettingPopMenuItem {
  modifyProfile(
    'Modify Profile',
    SettingPopMenuRouteType.navigator,
    '/profile/modifyProfile',
    ModifyProfileScreen(),
  ),
  changeEncryptor(
    'Change Encryptor',
    SettingPopMenuRouteType.navigator,
    '/profile/modifyEncryptor',
    ModifyEncryptorScreen(),
  ),
  about(
    'About',
    SettingPopMenuRouteType.dialog,
    '/profile/aboutAndLisence',
    AboutAndLisenceDialog(),
  ),
  logout(
    'Logout',
    SettingPopMenuRouteType.dialog,
    '/profile/logout',
    LogoutDialog(),
  );

  const SettingPopMenuItem(this.item, this.type, this.path, this.child);

  final String item;
  final SettingPopMenuRouteType type;
  final String path;
  final Widget child;

  void onPressedItem(BuildContext context) {
    switch (type) {
      case SettingPopMenuRouteType.navigator:
        unawaited(context.push(path));
      case SettingPopMenuRouteType.dialog:
        unawaited(showDialog(context: context, builder: (context) => child));
    }
  }
}

class SettingActionButton extends ConsumerWidget {
  const SettingActionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      itemBuilder: (context) => SettingPopMenuItem.values
          .map(
            (e) => PopupMenuItem(
              onTap: () => e.onPressedItem(context),
              value: e.item,
              child: Text(e.item),
            ),
          )
          .toList(),
    );
  }
}
