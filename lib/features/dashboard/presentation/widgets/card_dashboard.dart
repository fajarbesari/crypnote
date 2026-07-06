import 'package:crypnote/features/dashboard/providers/dashboard_controller.dart';

import '../../../../core/static/text_themize.dart';
import '../../../../core/components/card_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardGrid extends HookConsumerWidget {
  const DashboardGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardControllerProvider);

    final color = context.surfaceContainerHighest;

    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        CardDashboard(
          dashboard: state.amount.toString(),
          icon: Icons.note,
          label: 'total',
          description: 'Since the account was created',
          color: color,
        ),
        CardDashboard(
          dashboard: state.waiting.toString(),
          icon: Icons.lock_clock,
          label: 'waiting',
          description: 'To be opened by the specified deadline',
          color: color,
        ),
        CardDashboard(
          dashboard: state.destroyed.toString(),
          icon: Icons.delete,
          label: 'deleted',
          description: 'Calculate the cost of removing the crypnote',
          color: color,
        ),
        CardDashboard(
          dashboard: state.importance.toString(),
          icon: Icons.stairs,
          label: 'importance',
          description: 'The amount of creation is given the highest priority',
          color: color,
        ),
      ],
    );
  }
}
