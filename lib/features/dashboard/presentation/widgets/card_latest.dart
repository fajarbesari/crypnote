import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LatestCard extends ConsumerWidget {
  const LatestCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _latest(context, LatestView());
  }

  Widget _latest(BuildContext context, Widget child) => Card.filled(
    color: context.primaryBackground,
    child: Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      child: LatestView(),
    ),
  );
}

class LatestView extends ConsumerWidget {
  const LatestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: ElementSpacing.vertical,
      children: [
        Text(
          'Latest Decryption',
          style: context.titleSmall?.copyWith(
            color: context.onPrimaryBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.description, size: 50, color: context.secondary),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.last?.latestDecryptionAt?.formattedDateMonth ?? '',
                    style: context.titleLarge?.copyWith(
                      color: context.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                  Text(
                    state.last?.latestDecryptionAt?.formattedTime ?? '',
                    style: context.titleLarge?.copyWith(
                      color: context.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.code, color: context.secondary),
            Text(
              'Codecrypt ${state.last?.codecrypt.toString() ?? ''}',
              style: context.label?.copyWith(color: context.onSurface),
            ),
          ],
        ),
      ],
    );
  }
}
