import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/core/utils/extensions_string.dart';

import '../../../providers/login_controller.dart';
import '../../../../../core/static/spacing.dart';
import '../../../../../core/static/text_themize.dart';
import 'password_form_field.dart';
import '../../../../../core/components/username_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormLogin extends HookConsumerWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(loginControllerProvider.notifier);

    final lang = ref.watch(currentLanguageControllerProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: ElementSpacing.vertical,
      children: [
        Text(
          lang?.signin.capitalizeWords() ?? '',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
        TextFormFieldController(
          label: lang?.username ?? '',
          prefixIcon: Icons.people_alt,
        ),
        PasswordFormFieldLogin(
          label: lang?.password ?? '',
          prefixIcon: Icons.password,
          suffixIcon: Icons.visibility_off,
          suffixIconOnState: Icons.visibility,
          onTapSuffix: () => notifier.obsecureToggle(),
        ),
      ],
    );
  }
}
