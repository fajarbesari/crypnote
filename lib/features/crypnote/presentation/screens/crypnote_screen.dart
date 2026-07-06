import 'dart:async';
import 'package:crypnote/features/crypnote/providers/current_localization_controller.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/providers/nearest_encryptbox_notifier.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/features/crypnote/domain/models/nearest_encryptbox_model.dart';
import 'package:crypnote/features/dashboard/presentation/widgets/card_latest.dart';
import 'package:crypnote/features/dashboard/presentation/widgets/near_on_elapsed_card.dart';
import 'package:crypnote/features/dashboard/presentation/widgets/near_waiting_card.dart';
import 'package:crypnote/features/dashboard/presentation/widgets/greeting_profile.dart';
import '../../../authentication/providers/current_user_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../dashboard/presentation/widgets/card_dashboard.dart';
import '../../../dashboard/presentation/widgets/pin_banner.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CrypnoteScreen extends HookConsumerWidget {
  const CrypnoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pin = ref.watch(currentUserControllerProvider).value?.pin;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: LayoutSpacing.marginVertical,
            children: [
              SizedBox(height: LayoutSpacing.spacer),
              if (pin == null) ...[PinMaterialBanner()],
              CrypnoteContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class CrypnoteContent extends HookConsumerWidget {
  const CrypnoteContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      child: Column(
        spacing: ElementSpacing.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GreetingProfile(),
          NearestContainer(),
          state.last != null ? LatestCard() : SizedBox.shrink(),
          DashboardGrid(),
        ],
      ),
    );
  }
}

class NearestContainer extends HookConsumerWidget {
  const NearestContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nearestEncryptBoxProvider);
    final near = ref.watch(currentNearestEncryptBoxControllerProvider);

    ref.invalidate(nearestEncryptBoxProvider);

    ref.listen(nearestEncryptBoxProvider, (_, value) {
      value.maybeWhen(
        data: (data) {
          if (data == NearestFlow.nothing) {
            unawaited(
              ref
                  .read(currentNearestEncryptBoxControllerProvider.notifier)
                  .refresh(),
            );
          }

          if (data == NearestFlow.destroy) {
            unawaited(
              ref
                  .read(currentNearestEncryptBoxControllerProvider.notifier)
                  .destroy(near.encryptBox!),
            );
          }
        },
        orElse: () {},
      );
    });

    return state.when(
      data: (data) => switch (data) {
        NearestFlow.nothing => SizedBox.shrink(),
        NearestFlow.waiting => NearestWaitingCard(),
        NearestFlow.elapsed => NearestElapsedCard(),
        NearestFlow.destroy => SizedBox.shrink(),
      },
      error: (e, s) => Center(child: Text(e.toString())),
      loading: () => SizedBox.shrink(),
    );
  }
}

class LocalizationView extends ConsumerWidget {
  const LocalizationView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(
      currentLocalizationControllerProvider.notifier,
    );
    return DropdownButton<Locale>(
      items: controller.supportedLocale
          .map((e) => DropdownMenuItem(value: e, child: Text(e.languageCode)))
          .toList(),
      onChanged: (value) =>
          value != null ? controller.changeLocale(value) : null,
    );
  }
}
