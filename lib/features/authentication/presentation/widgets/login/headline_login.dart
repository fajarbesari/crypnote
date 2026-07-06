import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/core/utils/extensions_string.dart';
import '../../../../../core/static/spacing.dart';
import '../../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HeadlineLogin extends ConsumerWidget {
  const HeadlineLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: ElementSpacing.vertical,
      children: [
        Text(
          lang?.welcome.capitalizeWords() ?? '',
          style: context.headlineLarge?.copyWith(color: context.onSurface),
        ),
        Text(
          lang?.spontanious.capitalize() ?? '',
          style: context.body?.copyWith(color: context.onSurface),
        ),
      ],
    );
  }
}
