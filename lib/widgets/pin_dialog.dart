import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/providers/pin_validation_provider.dart';
import 'package:crypnote/core/providers/pin_validator_provider.dart';
import '../features/crypnote/providers/decryption_controller.dart';
import '../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PinDialog extends ConsumerWidget {
  const PinDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);

    final controller = ref.watch(
      textEditingControllerProvider(label: 'pin-dialog'),
    );

    ref.listen(pinValidationProvider, (_, value) {
      value.maybeWhen(
        orElse: () {},
        data: (data) {
          if (data) Navigator.pop(context, true);
        },
      );
    });

    final validator = ref.watch(pinValidatorProvider('pin-dialog'));
    final validating = ref.watch(pinValidationProvider);

    ref.invalidate(pinValidationProvider);
    ref.invalidate(pinValidatorProvider);

    return AlertDialog(
      alignment: Alignment.center,
      title: _heading(context),
      content: Column(
        spacing: ElementSpacing.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (user.value?.pin == null)
            Row(
              spacing: ElementSpacing.horizontal,
              children: [
                Icon(Icons.warning, color: context.error),
                Flexible(
                  child: Text(
                    'pin doesnt set up yet, whereas gotta need it as always',
                    style: context.label?.copyWith(color: context.error),
                    maxLines: 3,
                  ),
                ),
              ],
            ),

          TextFormField(
            controller: controller,
            style: context.label?.copyWith(color: context.onSurface),
            decoration: InputDecoration(border: OutlineInputBorder()),
            onChanged: validating.whenOrNull(
              data: (data) =>
                  (value) => data,
            ),
            validator: validator.whenOrNull(
              data: (data) =>
                  (value) => data,
            ),
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            ref.invalidate(decryptionControllerProvider);
            Navigator.pop(context, false);
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  Widget _heading(BuildContext context) => Text(
    'Pin Required',
    style: context.titleLarge?.copyWith(color: context.onSurface),
  );
}
