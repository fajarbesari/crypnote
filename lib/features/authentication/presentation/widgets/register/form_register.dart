import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/utils/extensions_string.dart';
import '../../../providers/register_controller.dart';
import '../../../../../core/static/spacing.dart';
import '../../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormRegister extends HookConsumerWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    final notifier = ref.read(registerControllerProvider.notifier);
    final state = ref.watch(registerControllerProvider);

    final username = ref.watch(
      textEditingControllerProvider(label: lang?.username ?? ''),
    );
    final password = ref.watch(
      textEditingControllerProvider(label: lang?.password ?? ''),
    );

    return Column(
      spacing: ElementSpacing.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lang?.register.capitalizeWords() ?? '',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
        TextFormField(
          style: context.label?.copyWith(color: context.onSurface),
          controller: username,
          validator: (value) => notifier.usernameValidator(value),
          errorBuilder: (context, errorText) => Text(
            errorText,
            style: context.label?.copyWith(color: context.error),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            iconColor: context.secondary,
            label: Text(lang?.username ?? ''),
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.people_alt, color: context.secondary),
          ),
        ),
        TextFormField(
          style: context.label?.copyWith(color: context.onSurface),
          controller: password,
          validator: (value) => notifier.passwordValidator(value),
          errorBuilder: (context, errorText) => Text(
            errorText,
            style: context.label?.copyWith(color: context.error),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: state.isObsecure,
          decoration: InputDecoration(
            iconColor: context.secondary,
            label: Text(lang?.password ?? ''),
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.password, color: context.secondary),
            suffixIcon: IconButton(
              icon: state.isObsecure
                  ? Icon(Icons.visibility_off, color: context.secondary)
                  : Icon(Icons.visibility, color: context.secondary),
              onPressed: notifier.obsecureToggle,
            ),
          ),
        ),
      ],
    );
  }
}
