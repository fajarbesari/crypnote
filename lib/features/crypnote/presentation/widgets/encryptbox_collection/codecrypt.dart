import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CodecryptView extends ConsumerWidget {
  const CodecryptView({super.key, required this.encryptBox});

  final EncryptBox encryptBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      decoration: BoxDecoration(
        color: context.tertiaryBackground,
        borderRadius: BorderRadius.circular(BorderRadiusX.inner),
      ),
      child: Row(
        spacing: ElementSpacing.horizontal,
        children: [
          Icon(Icons.code, color: context.onTertiaryBackground),
          Text(
            encryptBox.codecrypt.toString(),
            style: context.label?.copyWith(color: context.onSurface),
          ),
        ],
      ),
    );
  }
}
