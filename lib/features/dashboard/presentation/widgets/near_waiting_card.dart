import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/widgets/countdown.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NearestWaitingCard extends ConsumerWidget {
  const NearestWaitingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card.outlined(
      color: context.surfaceContainerLowest,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NearTitle(),
            Row(
              children: [
                Expanded(flex: 3, child: NearRemain()),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: ElementSpacing.horizontal,
                      vertical: ElementSpacing.vertical,
                    ),
                    child: NearCodecrypt(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NearTitle extends ConsumerWidget {
  const NearTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      'Nearest Decryption',
      style: context.titleSmall?.copyWith(
        color: context.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NearRemain extends ConsumerWidget {
  const NearRemain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentNearestEncryptBoxControllerProvider);

    if (state.encryptBox == null || state.encryptBox?.scheduleAt == null) {
      return Center(child: Text('error'));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: ElementSpacing.vertical,
      children: [
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.access_time, size: 50, color: context.secondary),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Countdown(
                  dateTime: state.encryptBox!.scheduleAt!,
                  style: context.titleLarge?.copyWith(
                    color: context.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Hours remaining',
                  style: context.titleLarge?.copyWith(
                    color: context.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.calendar_month, color: context.secondary),
            Flexible(
              child: Text(
                'on ${state.encryptBox?.scheduleAt?.formattedDateMonth ?? ''}',
                style: context.label?.copyWith(color: context.onSurface),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NearCodecrypt extends ConsumerWidget {
  const NearCodecrypt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentNearestEncryptBoxControllerProvider);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      decoration: BoxDecoration(
        color: context.tertiaryBackground,
        borderRadius: BorderRadius.circular(BorderRadiusX.inner),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.code, color: context.onTertiaryBackground),
          Center(
            child: Text(
              state.encryptBox?.codecrypt.toString() ?? '',
              style: context.titleLarge?.copyWith(
                color: context.onSurface,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
