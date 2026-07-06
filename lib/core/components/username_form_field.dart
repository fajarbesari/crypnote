import '../static/text_themize.dart';
import '../providers/text_editing_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextFormFieldController extends ConsumerWidget {
  const TextFormFieldController({
    super.key,
    required this.label,
    required this.prefixIcon,
  });

  final String label;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(textEditingControllerProvider(label: label));

    return TextFormField(
      style: context.label?.copyWith(color: context.onSurface),
      controller: controller,
      decoration: InputDecoration(
        iconColor: context.secondary,
        label: Text(label),
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon, color: context.secondary),
      ),
    );
  }
}
