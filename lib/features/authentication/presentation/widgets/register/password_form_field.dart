import '../../../providers/register_controller.dart';
import '../../../../../core/static/text_themize.dart';
import '../../../../../core/providers/text_editing_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordFormFieldRegister extends HookConsumerWidget {
  PasswordFormFieldRegister({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixIconOnState,
    this.onTapSuffix,
    this.validator,
  });

  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final IconData? suffixIconOnState;
  final VoidCallback? onTapSuffix;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(textEditingControllerProvider(label: label));
    final obsecure = ref.watch(registerControllerProvider.notifier);
    final obsecureState = ref.watch(registerControllerProvider);

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        iconColor: context.secondary,
        label: Text(label),
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon, color: context.secondary),
        suffixIcon: IconButton(
          icon: obsecureState.isObsecure
              ? Icon(suffixIcon, color: context.secondary)
              : Icon(suffixIconOnState, color: context.secondary),
          onPressed: onTapSuffix,
        ),
      ),
      obscureText: obsecure.obsecure,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      errorBuilder: (context, errorText) => Text(errorText),
    );
  }
}
