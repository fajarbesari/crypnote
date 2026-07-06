import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/features/authentication/providers/auth_controller.dart';
import 'package:crypnote/features/authentication/domain/entities/login.dart';
import 'package:crypnote/core/static/elevated_button.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/features/crypnote/providers/current_localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    final username = ref.watch(
      textEditingControllerProvider(label: lang?.username ?? ''),
    );
    final password = ref.watch(
      textEditingControllerProvider(label: lang?.password ?? ''),
    );

    final state = ref.watch(authStateControllerProvider);

    void onLogin() async {
      final loginModel = Login(
        username: username.text,
        password: password.text,
      );

      username.clear();
      password.clear();

      await ref.read(authStateControllerProvider.notifier).login(loginModel);
    }

    return Center(
      child: SizedBox(
        height: ElevatedButtonProperties.heightLarge,
        child: ElevatedButton(
          onPressed: state.isLoading == true ? null : onLogin,
          child: state.isLoading == true
              ? CircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: ElementSpacing.horizontal,
                  children: [
                    Icon(Icons.login, size: ElevatedButtonProperties.iconLarge),
                    Text(
                      lang?.loginbutton ?? '',
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
