import 'package:crypnote/features/crypnote/providers/current_cipher_controller.dart';
import 'package:crypnote/services/encryptor_service.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/components/circular_progress.dart';
import 'package:crypnote/widgets/secret_key_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:see_more/see_more.dart';

class ModifyEncryptorScreen extends ConsumerWidget {
  const ModifyEncryptorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modify Encryptor',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutSpacing.horizontal,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: LayoutSpacing.marginVertical,
          children: [
            SizedBox(height: LayoutSpacing.spacer),
            EncryptorRadio(),
            // EncryptorDetail(),
            GenerateScreetKey(),
          ],
        ),
      ),
    );
  }
}

class EncryptorDetail extends ConsumerWidget {
  const EncryptorDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: SeeMoreWidget(
          '''AES-GCM (Galois/Counter Mode) is an operating mode that combines encryption and authentication into a single process. GCM falls within the category of Authenticated Encryption with Associated Data (AEAD), which are schemes capable of ensuring confidentiality whilst detecting alterations to the ciphertext. (Sitorus, A.M, ITB 2025)''',
          textAlign: TextAlign.left,
          textStyle: context.label?.copyWith(color: context.onSurface),
        ),
      ),
    );
  }
}

class EncryptorRadio extends ConsumerWidget {
  const EncryptorRadio({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentCipherControllerProvider);

    final notifier = ref.read(currentCipherControllerProvider.notifier);

    final width = MediaQuery.of(context).size.width;

    return PopupMenuButton<String>(
      color: context.primaryBackground,
      offset: Offset(width, 0),
      borderRadius: BorderRadius.all(Radius.circular(BorderRadiusX.outter)),
      initialValue: state.cipher?.name,
      onSelected: (value) => notifier.changeCipher(value),
      itemBuilder: (context) => notifier.ciphers
          .map((e) => PopupMenuItem(value: e, child: Text(e)))
          .toList(),
      child: Card(
        color: context.primaryBackground,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementSpacing.horizontal,
              vertical: ElementSpacing.vertical,
            ),
            child: Text(
              state.cipher?.name ?? '',
              style: context.label?.copyWith(
                color: context.onPrimaryBackground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GenerateScreetKey extends HookConsumerWidget {
  const GenerateScreetKey({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentCipherControllerProvider);
    final notifier = ref.read(currentCipherControllerProvider.notifier);

    void onGenerate() async => await notifier.generateSecretKey();

    return _container(
      context,
      Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: ElementSpacing.horizontal,
                vertical: ElementSpacing.vertical,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: context.onSurface!),
              ),
              child: SecretKeyView(secretKey: state.secretKey),
            ),
          ),
          IconButton(
            onPressed: onGenerate,
            icon: state.isLoading == true
                ? CircularProgress()
                : Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }

  Widget _container(BuildContext context, Widget child) => Column(
    spacing: ElementSpacing.vertical,
    children: [
      Row(
        spacing: ElementSpacing.horizontal,
        children: [
          Icon(Icons.security, color: context.grey),
          Flexible(
            child: Text(
              'For maximize the security, considering to generate new secret key !',
              maxLines: 2,
              style: context.label?.copyWith(color: context.grey),
            ),
          ),
        ],
      ),
      child,
    ],
  );
}
