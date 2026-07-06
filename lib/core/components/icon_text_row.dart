import '../static/spacing.dart';
import '../static/text_themize.dart';
import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({super.key, required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: ElementSpacing.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: context.surface),
        Text(label, style: TextStyle(color: context.surface)),
      ],
    );
  }
}
