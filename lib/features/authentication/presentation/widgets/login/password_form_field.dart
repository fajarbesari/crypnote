import '../../../providers/login_controller.dart';
import '../../../../../core/static/text_themize.dart';
import '../../../../../core/providers/text_editing_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordFormFieldLogin extends HookConsumerWidget {
  const PasswordFormFieldLogin({
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
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(textEditingControllerProvider(label: label));
    final obsecure = ref.watch(loginControllerProvider.notifier);

    final obsecureState = ref.watch(loginControllerProvider);

    return TextFormField(
      controller: controller,
      style: context.label?.copyWith(color: context.onSurface),
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
      enableInteractiveSelection: false,
      errorBuilder: (_, errorText) =>
          Text(errorText, style: context.label?.copyWith(color: context.error)),
    );
  }
}
