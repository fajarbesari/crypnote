import '../static/text_themize.dart';
import 'package:flutter/material.dart';

class IconButtonContainer extends StatelessWidget {
  const IconButtonContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.primaryBackground,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
    );
  }
}
