import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 24,
      child: CircularProgressIndicator(color: context.primary),
    );
  }
}
