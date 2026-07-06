import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/features/authentication/presentation/widgets/register/headline_register.dart';
import 'package:crypnote/features/authentication/presentation/widgets/register/register_button.dart';
import 'package:crypnote/l10n/app_localization.dart';

import '../../providers/auth_controller.dart';
import '../../../../core/utils/extensions_build_context.dart';
import '../widgets/register/form_register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    final username = ref.watch(
      textEditingControllerProvider(label: lang?.username ?? ''),
    );
    final password = ref.watch(
      textEditingControllerProvider(label: lang?.password ?? ''),
    );

    ref.listen(authStateControllerProvider, (_, value) {
      if (value.user != null) {
        context.showSnackBar(lang?.registersuccessful ?? '');
        username.clear();
        password.clear();
        context.pop();
      }

      if (value.error != null) context.showSnackBar(lang?.registerfailed ?? '');
    });

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: context.pop)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutSpacing.horizontal,
          vertical: LayoutSpacing.vertical,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: LayoutSpacing.marginVertical,
            children: [
              HeadlineRegister(),
              SizedBox(height: LayoutSpacing.spacer),
              FormRegister(),
              RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
