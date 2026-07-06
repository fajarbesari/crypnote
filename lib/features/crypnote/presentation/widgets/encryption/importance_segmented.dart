import 'package:crypnote/features/crypnote/providers/current_encryption_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImportanceLevelSegementedButton extends ConsumerWidget {
  const ImportanceLevelSegementedButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(currentEncryptionControllerProvider.notifier);
    final state = ref.watch(currentEncryptionControllerProvider);

    return _importance(
      context,
      SegmentedButton<ImportanceLevel>(
        selectedIcon: Icon(Icons.stairs),
        segments: ImportanceLevel.values
            .map(
              (e) => ButtonSegment(
                value: e,
                label: Text(
                  e.levelIndicate.toString(),
                  style: context.label?.copyWith(
                    color: context.onSecondaryBackground,
                  ),
                ),
              ),
            )
            .toList(),
        selected: <ImportanceLevel>{
          state.importanceLevel ?? ImportanceLevel.levelFour,
        },
        onSelectionChanged: (p0) => notifier.importanceLevel = p0.first,
      ),
    );
  }

  Widget _importance(BuildContext context, Widget child) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: ElementSpacing.horizontal,
      vertical: ElementSpacing.vertical,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: ElementSpacing.vertical,
      children: [
        Text(
          'Importance Level',
          style: context.titleSmall?.copyWith(color: context.onSurface),
        ),
        child,
      ],
    ),
  );
}
