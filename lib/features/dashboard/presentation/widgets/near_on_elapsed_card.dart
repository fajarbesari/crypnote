import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/providers/decryption_controller.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/features/crypnote/domain/models/nearest_encryptbox_model.dart';
import 'package:crypnote/widgets/countdown.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NearestElapsedCard extends ConsumerWidget {
  const NearestElapsedCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentNearestEncryptBoxControllerProvider);

    void onTap() async {
      if (state.encryptBox == null) return;

      // bool? validated;

      // validated = await showDialog<bool>(
      //   context: context,
      //   builder: (dialogCtx) => PinDialog(),
      // );

      // if (validated == true && context.mounted) {
      final decryption = ref
          .read(decryptionControllerProvider.notifier)
          .decryption(state.encryptBox!);
      context.push('/decryption');
      print(decryption);
      // }
    }

    return Card.outlined(
      color: context.error,
      child: InkWell(
        borderRadius: BorderRadius.circular(BorderRadiusX.outter),
        onTap: onTap,
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
        color: context.onError,
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: ElementSpacing.vertical,
      children: [
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.access_time, size: 50, color: context.onError),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Countdown(
                  dateTime: state.scheduleAt!.add(
                    NearestEncryptBoxModel.elapsedTime,
                  ),
                  style: context.titleLarge?.copyWith(
                    color: context.onError,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Elapsed remaining',
                  style: context.titleLarge?.copyWith(
                    color: context.onError,
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
            Icon(Icons.calendar_month, color: context.onError),
            Flexible(
              child: Text(
                'on ${state.encryptBox?.scheduleAt?.formattedDateMonth ?? ''}',
                style: context.label?.copyWith(color: context.onError),
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
        color: context.errorBackground,
        borderRadius: BorderRadius.circular(BorderRadiusX.inner),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.code, color: context.onErrorBackground),
          Center(
            child: Text(
              state.encryptBox?.codecrypt.toString() ?? '',
              style: context.titleLarge?.copyWith(
                color: context.onErrorBackground,
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
