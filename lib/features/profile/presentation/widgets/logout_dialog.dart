import 'package:crypnote/features/authentication/providers/auth_controller.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(
        'Are you sure to logout ?',
        style: context.titleLarge?.copyWith(color: context.onSurface),
      ),
      actions: [
        TextButton(
          onPressed: () =>
              ref.read(authStateControllerProvider.notifier).logout(),
          child: Text('Yes'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text('No'),
        ),
      ],
    );
  }
}
