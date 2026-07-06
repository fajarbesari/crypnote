import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryption/importance_segmented.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryption/shcedule_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormEncryption extends HookConsumerWidget {
  const FormEncryption({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(
      textEditingControllerProvider(label: 'encryption'),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: ElementSpacing.vertical,
        children: [
          TextFormField(
            style: context.label?.copyWith(color: context.onSurface),
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
            maxLength: 1000,
            maxLines: 3,
          ),
          SchedulePicker(),
          ImportanceLevelSegementedButton(),
        ],
      ),
    );
  }
}
