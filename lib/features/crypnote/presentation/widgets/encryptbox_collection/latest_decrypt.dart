import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LatestDecryption extends ConsumerWidget {
  const LatestDecryption({super.key, required this.encryptBox});

  final EncryptBox encryptBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'latest decryption at',
          style: context.titleSmall?.copyWith(
            color: context.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          encryptBox.latestDecryptionAt?.formattedDateMonth ?? '',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
        Text(
          encryptBox.latestDecryptionAt?.formattedTime ?? '',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
      ],
    );
  }
}
