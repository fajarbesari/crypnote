import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GradientBackground extends ConsumerWidget {
  const GradientBackground({
    super.key,
    required this.child,
    required this.colors,
  });

  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomEnd,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
