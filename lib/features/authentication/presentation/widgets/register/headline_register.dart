import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/core/utils/extensions_string.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HeadlineRegister extends ConsumerWidget {
  const HeadlineRegister({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);
    return Column(
      spacing: ElementSpacing.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lang?.registerheadline.capitalizeWords() ?? '',
          style: context.headlineLarge?.copyWith(color: context.onSurface),
        ),
        Text(
          lang?.registertitle.capitalize() ?? '',
          style: context.body?.copyWith(color: context.onSurface),
        ),
      ],
    );
  }
}
