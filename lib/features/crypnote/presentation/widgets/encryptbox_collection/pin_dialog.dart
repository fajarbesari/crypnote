import 'package:crypnote/core/static/spacing.dart';
import '../../../providers/decryption_controller.dart';
import '../../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PinDialogDecryption extends ConsumerWidget {
  const PinDialogDecryption({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(decryptionControllerProvider.notifier);

    final pin = ref.watch(decryptionControllerProvider).pin;

    ref.listen(decryptionControllerProvider, (_, value) {
      if (value.isPinValid == true) {
        Navigator.pop(context, true);
      }
    });

    return AlertDialog(
      alignment: Alignment.center,
      title: _heading(context),
      content: Column(
        spacing: ElementSpacing.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (pin == null)
            Row(
              spacing: ElementSpacing.horizontal,
              children: [
                Icon(Icons.warning, color: context.grey),
                Flexible(
                  child: Text(
                    'pin doesnt set up yet, whereas gotta need it as always',
                    style: context.label?.copyWith(color: context.grey),
                    maxLines: 3,
                  ),
                ),
              ],
            ),

          TextFormField(
            style: context.label?.copyWith(color: context.onSurface),
            decoration: InputDecoration(border: OutlineInputBorder()),
            onChanged: (value) => notifier.pinValidation(value),
            validator: (value) => notifier.pinValidator(value),
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            ref.invalidate(decryptionControllerProvider);
            Navigator.pop(context);
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  Widget _heading(BuildContext context) => Text(
    'Decryption Pin Required',
    style: context.titleLarge?.copyWith(color: context.onSurface),
  );
}
