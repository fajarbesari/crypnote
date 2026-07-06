import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterNavigatorButton extends ConsumerWidget {
  const RegisterNavigatorButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    void navigateRegister() => context.push('/register');

    return TextButton(
      onPressed: navigateRegister,
      child: Text(
        lang?.registerNow ?? '',
        textAlign: TextAlign.center,
        style: context.label?.copyWith(color: context.secondary),
      ),
    );
  }
}
