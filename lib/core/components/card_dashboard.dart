import 'package:crypnote/core/static/border_radius.dart';

import '../static/spacing.dart';
import '../static/text_themize.dart';
import 'package:flutter/material.dart';

class CardDashboard extends StatelessWidget {
  const CardDashboard({
    super.key,
    required this.dashboard,
    required this.icon,
    required this.label,
    required this.description,
    required this.color,
  });

  final String dashboard;
  final IconData icon;
  final String label;
  final String description;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ElementSpacing.horizontal,
            vertical: ElementSpacing.vertical,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // spacing: ElementSpacing.vertical,
            children: [
              Flexible(child: _dashboardIcon(context)),
              Expanded(flex: 2, child: Center(child: _dashboardValue(context))),
              Flexible(child: _description(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dashboardIcon(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(
      horizontal: ElementSpacing.horizontal,
      vertical: ElementSpacing.vertical,
    ),
    decoration: BoxDecoration(
      color: context.primaryBackground,
      borderRadius: BorderRadius.circular(BorderRadiusX.inner),
    ),
    child: Icon(icon, color: context.onPrimaryBackground),
  );

  Widget _dashboardValue(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Text(
          dashboard,
          style: context.headlineLarge?.copyWith(color: context.primary),
        ),
      ),
      Flexible(
        child: Text(
          label.toUpperCase(),
          style: context.body?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.onSurface,
          ),
        ),
      ),
    ],
  );

  Widget _description(BuildContext context) => Text(
    description,
    maxLines: 3,
    style: context.label?.copyWith(color: context.onSurface),
  );
}
