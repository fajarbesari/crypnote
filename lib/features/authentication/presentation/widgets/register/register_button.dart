import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/features/authentication/providers/auth_controller.dart';
import 'package:crypnote/features/authentication/providers/register_controller.dart';
import 'package:crypnote/features/authentication/domain/entities/login.dart';
import 'package:crypnote/core/static/elevated_button.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    final authState = ref.watch(authStateControllerProvider);

    final username = ref.watch(
      textEditingControllerProvider(label: lang?.username ?? ''),
    );
    final password = ref.watch(
      textEditingControllerProvider(label: lang?.password ?? ''),
    );

    void onRegister() async {
      final login = Login(username: username.text, password: password.text);

      await ref.read(authStateControllerProvider.notifier).register(login);

      ref.invalidate(authStateControllerProvider);
    }

    return Center(
      child: SizedBox(
        height: ElevatedButtonProperties.heightLarge,
        child: ElevatedButton(
          onPressed: authState.isLoading == true ? null : onRegister,
          child: authState.isLoading
              ? CircularProgressIndicator()
              : Row(
                  spacing: ElementSpacing.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.app_registration,
                      size: ElevatedButtonProperties.iconLarge,
                    ),
                    Text(
                      lang?.registerbutton ?? '',
                      style: context.titleLarge?.copyWith(
                        color: context.primary,
                        fontWeight: ElevatedButtonProperties.fontWeightLarge,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
