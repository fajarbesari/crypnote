import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CrypnoteIconTextButton extends ConsumerWidget {
  const CrypnoteIconTextButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          spacing: ElementSpacing.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(label, style: context.titleLarge),
          ],
        ),
      ),
    );
  }
}
