import 'package:crypnote/features/profile/providers/current_profile_image.dart';
import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';
import 'package:crypnote/widgets/clock.dart';
import '../../../authentication/providers/current_user_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreetingProfile extends ConsumerWidget {
  const GreetingProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);
    final notifier = ref.watch(dashboardControllerProvider.notifier);

    return SizedBox(
      width: double.infinity,
      child: Card.filled(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ElementSpacing.horizontal,
            vertical: ElementSpacing.vertical,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      notifier.dayTime,
                      style: context.label?.copyWith(color: context.onSurface),
                    ),
                    Clock(
                      style: context.titleLarge?.copyWith(
                        color: context.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: ElementSpacing.horizontal,
                  children: [
                    CircleAvatarProfile(),
                    Flexible(
                      child: Text(
                        '${user.value?.login.username}',
                        style: context.titleLarge?.copyWith(
                          color: context.onSurface,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleAvatarProfile extends ConsumerWidget {
  const CircleAvatarProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentProfileImageProvider);

    return CircleAvatar(radius: 30, backgroundImage: state);
  }
}
