import 'dart:async';

import 'package:crypnote/core/providers/text_editing_provider.dart';

import '../../../authentication/providers/current_user_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import '../../../../core/providers/validation_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModifyProfileScreen extends ConsumerWidget {
  const ModifyProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(currentUserControllerProvider.notifier);
    final username = ref.read(
      textEditingControllerProvider(label: notifier.usernameId),
    );
    final firstname = ref.read(
      textEditingControllerProvider(label: notifier.firstnameId),
    );
    final lastname = ref.read(
      textEditingControllerProvider(label: notifier.lastnameId),
    );

    void onModify() {
      unawaited(notifier.modifyUsername(username.text));
      unawaited(
        notifier.modifyName(firstname: firstname.text, lastname: lastname.text),
      );
    }

    final usernameCheckBoxState = ref.watch(
      validationListenerProvider(
        notifier.usernameValidator,
        notifier.usernameId,
      ),
    );
    final firstnameCheckBoxState = ref.watch(
      validationListenerProvider(
        notifier.usernameValidator,
        notifier.firstnameId,
      ),
    );
    final lastnameCheckBoxState = ref.watch(
      validationListenerProvider(
        notifier.usernameValidator,
        notifier.lastnameId,
      ),
    );

    ref.invalidate(validationListenerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modify Profile',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
        actions: [
          IconButton(
            onPressed:
                usernameCheckBoxState.value == null &&
                    firstnameCheckBoxState.value == null &&
                    lastnameCheckBoxState.value == null
                ? onModify
                : null,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            spacing: LayoutSpacing.marginVertical,
            children: [
              SizedBox(height: LayoutSpacing.spacer),
              ModifyForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ModifyForm extends HookConsumerWidget {
  const ModifyForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentUserControllerProvider);
    final notifier = ref.read(currentUserControllerProvider.notifier);

    final username = ref.watch(
      textEditingControllerProvider(label: notifier.usernameId),
    );
    final firstname = ref.watch(
      textEditingControllerProvider(label: notifier.firstnameId),
    );
    final lastname = ref.watch(
      textEditingControllerProvider(label: notifier.lastnameId),
    );

    useEffect(() {
      username.text = state.value?.login.username ?? '';
      firstname.text = state.value?.firstname ?? '';
      lastname.text = state.value?.lastname ?? '';
      return null;
    }, []);

    return Column(
      spacing: ElementSpacing.vertical,
      children: [
        TextFormField(
          style: context.label?.copyWith(color: context.onSurface),
          controller: username,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('New username'),
          ),
          validator: (value) => notifier.usernameValidator(value),
          errorBuilder: (context, errorText) => Text(errorText),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        Row(
          spacing: ElementSpacing.vertical,
          children: [
            Icon(Icons.account_box, color: context.grey),
            Flexible(
              child: Text(
                'There is no exceptional innovocation to modify username unless every events in the future could be understand as the acceptable mistake',
                maxLines: 3,
                style: context.label?.copyWith(color: context.grey),
              ),
            ),
          ],
        ),
        SizedBox(height: ElementSpacing.spacer),
        TextFormField(
          controller: firstname,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('New firstname'),
          ),
          validator: (value) => notifier.usernameValidator(value),
          errorBuilder: (context, errorText) => Text(errorText),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: context.label?.copyWith(color: context.onSurface),
        ),
        TextFormField(
          controller: lastname,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('New lastname'),
          ),
          validator: (value) => notifier.usernameValidator(value),
          errorBuilder: (context, errorText) => Text(errorText),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: context.label?.copyWith(color: context.onSurface),
        ),
      ],
    );
  }
}
