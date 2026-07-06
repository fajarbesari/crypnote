import 'package:crypnote/features/crypnote/providers/elapsed_vault_controller.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/widgets/countdown.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ElapsedCrypnoteScreen extends ConsumerWidget {
  const ElapsedCrypnoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(elapsedVaultControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Elapsed Collection')),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutSpacing.horizontal,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: state.length,
          itemBuilder: (context, index) => Card.filled(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ElementSpacing.horizontal,
                vertical: ElementSpacing.vertical,
              ),
              child: Column(
                spacing: ElementSpacing.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'elapsed time',
                    style: context.titleSmall?.copyWith(
                      color: context.onSurface,
                    ),
                  ),
                  Row(
                    spacing: ElementSpacing.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Countdown(
                        dateTime: state[index].scheduleAt!,
                        style: context.titleLarge?.copyWith(
                          color: context.tertiary,
                        ),
                      ),
                      Text(
                        'Hours',
                        style: context.titleSmall?.copyWith(
                          color: context.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
