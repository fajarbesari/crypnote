import 'package:crypnote/features/crypnote/providers/current_cipher_controller.dart';
import 'package:crypnote/services/encryptor_service.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:see_more/see_more.dart';

class EncryptorView extends ConsumerWidget {
  const EncryptorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentCipherControllerProvider);

    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Column(
          spacing: ElementSpacing.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.cipher?.name ?? '',
              style: context.titleLarge?.copyWith(color: context.primary),
            ),
            SeeMoreWidget(
              '''AES-GCM (Galois/Counter Mode) is an operating mode that combines encryption and authentication into a single process. GCM falls within the category of Authenticated Encryption with Associated Data (AEAD), which are schemes capable of ensuring confidentiality whilst detecting alterations to the ciphertext. (Sitorus, A.M, ITB 2025)''',
              textAlign: TextAlign.left,
              textStyle: context.label?.copyWith(color: context.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}
