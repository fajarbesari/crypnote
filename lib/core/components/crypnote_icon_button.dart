import '../static/text_themize.dart';
import 'package:flutter/material.dart';

class CrypnoteIconButton extends StatelessWidget {
  const CrypnoteIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.primaryBackground,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: context.secondary),
          ),
        ),
      ),
    );
  }
}
