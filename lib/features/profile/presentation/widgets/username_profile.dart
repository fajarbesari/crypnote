import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfile extends HookConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      decoration: BoxDecoration(
        color: context.primaryBackground,
        borderRadius: BorderRadius.circular(BorderRadiusX.outter),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: LayoutSpacing.vertical,
        children: [
          Row(
            spacing: ElementSpacing.horizontal,
            children: [
              Icon(Icons.people),
              Text(
                'Yours',
                style: context.titleLarge?.copyWith(
                  color: context.onPrimaryBackground,
                ),
              ),
            ],
          ),
          Column(
            children: [
              UsernameProfile(),
              FirstnameProfile(),
              LastnameProfile(),
            ],
          ),
        ],
      ),
    );
  }
}

class UsernameProfile extends ConsumerWidget {
  const UsernameProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentUserControllerProvider);

    return Card.filled(
      color: context.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Username',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
            Text(
              state.value?.login.username ?? '',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstnameProfile extends ConsumerWidget {
  const FirstnameProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentUserControllerProvider);

    return Card.filled(
      color: context.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'First name',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
            Text(
              state.value?.firstname ?? '',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
          ],
        ),
      ),
    );
  }
}

class LastnameProfile extends ConsumerWidget {
  const LastnameProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentUserControllerProvider);

    return Card.filled(
      color: context.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Last name',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
            Text(
              state.value?.lastname ?? 'unfilled',
              style: context.titleSmall?.copyWith(color: context.onSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
