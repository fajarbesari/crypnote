import 'dart:async';

import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:go_router/go_router.dart';

import '../../../authentication/providers/current_user_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import '../../../../core/utils/extensions_build_context.dart';
import '../../../../core/providers/validation_listener.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreatePinScreen extends HookConsumerWidget {
  const CreatePinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(currentUserControllerProvider.notifier);

    final pinController = ref.watch(
      textEditingControllerProvider(label: notifier.pinId),
    );

    final checkBoxState = ref.watch(
      validationListenerProvider(notifier.pinValidator, notifier.pinId),
    );

    void onSubmitPin() {
      unawaited(notifier.createPin(pinController.text));
      context.pop();
    }

    ref.invalidate(validationListenerProvider);

    ref.listen(currentUserControllerProvider, (_, value) {
      if (value.value?.pin != null) {
        context.showSnackBar('Pin decryption created, keep it save !');
      }
    });

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: checkBoxState.maybeWhen(
              orElse: () => null,
              data: (data) => data == null ? onSubmitPin : null,
            ),
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: ElementSpacing.vertical,
          children: [
            Row(
              spacing: ElementSpacing.horizontal,
              children: [
                Icon(Icons.pin, color: context.grey),
                Flexible(
                  child: Text(
                    'in required to decrypting the cryptnote for more restriction sustainable approach',
                    maxLines: 3,
                    style: context.label?.copyWith(color: context.grey),
                  ),
                ),
              ],
            ),
            TextFormField(
              style: context.label?.copyWith(color: context.onSurface),
              controller: pinController,
              decoration: InputDecoration(border: OutlineInputBorder()),
              validator: (value) => notifier.pinValidator(value),
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              errorBuilder: (_, err) => Text(err),
            ),
          ],
        ),
      ),
      // actions: [TextButton(onPressed: onSubmitPin, child: Text('Submit'))],
    );
  }
}
