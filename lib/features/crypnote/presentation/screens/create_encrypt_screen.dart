import 'package:crypnote/features/crypnote/providers/current_encryption_controller.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryption/create_encryption_button.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryption/form_encryption.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/utils/extensions_build_context.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCrypnoteScreen extends ConsumerWidget {
  const CreateCrypnoteScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(currentEncryptionControllerProvider, (_, value) {
      if (value.encryptBox != null && value.error == null) {
        context.showSnackBar('Encryption successful');
      }

      if (value.error != null) {
        context.showSnackBar('Encryption failed');
      }
    });

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: LayoutSpacing.marginVertical,
            children: [
              // EncryptorView(),
              FormEncryption(),
              EncryptionButton(),
              SizedBox(height: LayoutSpacing.spacer),
            ],
          ),
        ),
      ),
    );
  }
}
