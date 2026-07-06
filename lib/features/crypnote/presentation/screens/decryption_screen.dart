import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/crypnote/providers/nearest_encryptbox_notifier.dart';
import 'package:go_router/go_router.dart';
import '../../providers/decryption_controller.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DecryptionScreen extends HookConsumerWidget {
  const DecryptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);

    ref.invalidate(nearestEncryptBoxProvider);

    void onBack() {
      ref.invalidate(decryptionControllerProvider);
      context.pop();
    }

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: onBack)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ElementSpacing.horizontal,
            vertical: ElementSpacing.vertical,
          ),
          child: state.isLoading == true
              ? _card(CircularProgressIndicator())
              : _card(CrypnoteView()),
        ),
      ),
    );
  }

  Widget _card(Widget child) => IntrinsicHeight(
    child: Card.filled(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: child,
      ),
    ),
  );
}

class CrypnoteView extends ConsumerWidget {
  const CrypnoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: LayoutSpacing.vertical,
      children: [
        // ScheduleAt(),
        CrypnoteUuid(),
        Expanded(child: Center(child: CrypnoteBody())),
        SizedBox(
          width: 400,
          child: Row(
            spacing: ElementSpacing.horizontal,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CrypnoteCreateAt(),
              Flexible(child: CodeCrypt()),
              Flexible(child: CrypnoteImportanceLevel()),
            ],
          ),
        ),
      ],
    );
  }
}

class CodeCrypt extends ConsumerWidget {
  const CodeCrypt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);

    return Card.filled(
      color: context.secondaryBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.code, color: context.onSecondaryBackground),
            Center(
              child: Text(
                state.encryptBox?.codecrypt.toString() ?? '',
                style: context.titleLarge?.copyWith(
                  color: context.onSurface,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CrypnoteUuid extends ConsumerWidget {
  const CrypnoteUuid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);
    return Text(
      state.crypnote?.id.toFormattedString() ?? '',
      style: context.titleSmall?.copyWith(color: context.onSurface),
    );
  }
}

class CrypnoteBody extends ConsumerWidget {
  const CrypnoteBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);
    return SizedBox(
      height: 140,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        decoration: BoxDecoration(
          color: context.primaryBackground,
          borderRadius: BorderRadius.circular(BorderRadiusX.inner),
        ),
        child: Center(
          child: Text(
            state.crypnote?.body ?? '',
            style: context.body?.copyWith(
              color: context.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class CrypnoteImportanceLevel extends ConsumerWidget {
  const CrypnoteImportanceLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);

    return Card.filled(
      color: context.tertiaryBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.stairs, color: context.onTertiaryBackground),
            Center(
              child: Text(
                state.crypnote?.importanceLevel.levelIndicate.toString() ?? '',
                style: context.titleLarge?.copyWith(
                  color: context.onSurface,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CrypnoteCreateAt extends ConsumerWidget {
  const CrypnoteCreateAt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(decryptionControllerProvider);
    return Column(
      spacing: ElementSpacing.spacer,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'encryption at',
          style: context.titleSmall?.copyWith(
            color: context.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          spacing: ElementSpacing.horizontal,
          children: [
            Icon(Icons.date_range, color: context.secondary),
            Text(
              state.crypnote?.createdAt?.formattedDateMonth ?? "",
              style: context.label?.copyWith(color: context.onSurface),
            ),
          ],
        ),
      ],
    );
  }
}

// class ScheduleAt extends ConsumerWidget {
//   const ScheduleAt({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(decryptionControllerProvider);
//     return Column(
//       spacing: ElementSpacing.spacer,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'schedule at',
//           style: context.titleSmall?.copyWith(
//             color: context.primary,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Row(
//           spacing: ElementSpacing.horizontal,
//           children: [
//             Icon(Icons.timelapse, color: context.primary),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   state.crypnote?.scheduleAt?.formattedDateMonth ?? '',
//                   maxLines: 2,
//                   style: context.label?.copyWith(color: context.onSurface),
//                 ),
//                 Text(
//                   state.crypnote?.scheduleAt?.formattedTime ?? '',
//                   maxLines: 2,
//                   style: context.label?.copyWith(color: context.onSurface),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
