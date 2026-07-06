import 'package:crypnote/features/crypnote/providers/current_encryption_controller.dart';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/static/elevated_button.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/providers/selected_date.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class CreateEncryptionButton extends ConsumerWidget {
  const CreateEncryptionButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback? onTap;

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: ElevatedButtonProperties.heightLarge,
      child: ElevatedButton(onPressed: onTap, child: child),
    );
  }
}

class EncryptionButton extends ConsumerWidget {
  const EncryptionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(currentEncryptionControllerProvider.notifier);
    final selectedSchedule = ref.watch(
      selectedDateProvider(notifier.selectedSchedule),
    );
    final state = ref.watch(currentEncryptionControllerProvider);
    final user = ref.watch(currentUserControllerProvider);

    final note = ref.watch(textEditingControllerProvider(label: 'encryption'));

    void onEncryption() async {
      if (user.value == null) return;

      if (selectedSchedule?.isBefore(DateTime.now()) ?? false) return;

      final crypnote = Crypnote(
        id: Uuid().v8obj(),
        userId: user.value!.id!,
        body: note.text,
        createdAt: DateTime.now(),
        importanceLevel: state.importanceLevel ?? ImportanceLevel.levelFour,
      );

      notifier.encryption(crypnote, selectedSchedule);

      note.clear();
    }

    return CreateEncryptionButton(
      onTap: state.isLoading == true ? null : onEncryption,
      child: state.isLoading == true
          ? CircularProgressIndicator()
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: ElementSpacing.horizontal,
              children: [
                Icon(Icons.note_add, size: ElevatedButtonProperties.iconLarge),
                Text(
                  'Encryption',
                  style: context.titleLarge?.copyWith(
                    color: context.primary,
                    fontWeight: ElevatedButtonProperties.fontWeightLarge,
                  ),
                ),
              ],
            ),
    );
  }
}
