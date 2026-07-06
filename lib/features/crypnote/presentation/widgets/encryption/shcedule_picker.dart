import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/crypnote/providers/current_encryption_controller.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/providers/selected_date.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class SchedulePicker extends HookConsumerWidget {
  const SchedulePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(currentEncryptionControllerProvider.notifier);

    final state = ref.watch(selectedDateProvider(notifier.selectedSchedule));

    final notifierPick = ref.watch(
      selectedDateProvider(notifier.selectedSchedule).notifier,
    );

    return Card.filled(
      color: context.tertiaryBackground,
      child: Column(
        spacing: ElementSpacing.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () async {
                  final selected = await showOmniDateTimePicker(
                    context: context,
                  );
                  notifierPick.set(selected);
                },
                icon: state != null
                    ? Icon(Icons.check_box)
                    : Icon(Icons.check_box_outline_blank),
              ),
              state != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _scheduleTitle(context),
                        SizedBox(width: ElementSpacing.spacer),
                        Row(
                          spacing: ElementSpacing.horizontal,
                          children: [
                            Text(
                              'at',
                              style: context.titleSmall?.copyWith(
                                color: context.onSecondaryBackground,
                              ),
                            ),
                            Text(
                              "${state.formattedDateMonth} ${state.formattedTime}",
                              style: context.titleSmall?.copyWith(
                                color: context.onPrimaryBackground,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: ElementSpacing.spacer),
                      ],
                    )
                  : _scheduleTitle(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _scheduleTitle(BuildContext context) => Text(
    'Decryption Schedule',
    style: context.titleSmall?.copyWith(color: context.onSurface),
    maxLines: 2,
  );
}
