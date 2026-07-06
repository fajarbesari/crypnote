import 'package:crypnote/core/utils/extensions_encryptbox.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/utils/extensions_build_context.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryptbox_collection/codecrypt.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryptbox_collection/latest_decrypt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EncryptBoxTile extends ConsumerWidget {
  const EncryptBoxTile({super.key, required this.encryptBox});

  final EncryptBox encryptBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: context.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.delete, color: context.onError),
      ),
      onDismissed: (d) async {
        await ref
            .read(encryptBoxCollectionControllerProvider.notifier)
            .deleteById(encryptBox.id!);
      },
      confirmDismiss: (direction) async {
        final confirm = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure want to delete ?',
              style: context.titleLarge?.copyWith(color: context.onSurface),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text('No'),
              ),
            ],
          ),
        );
        return confirm;
      },
      child: Card.outlined(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ElementSpacing.horizontal,
            vertical: ElementSpacing.vertical,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: ElementSpacing.vertical,
            children: [
              _title(context),
              encryptBox.latestDecryptionAt != null
                  ? LatestDecryption(encryptBox: encryptBox)
                  : SizedBox.shrink(),
              Row(
                spacing: ElementSpacing.horizontal,
                children: [
                  CodecryptView(encryptBox: encryptBox),
                  _algorithm(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) => Text(
    encryptBox.toUuid,
    style: context.body?.copyWith(color: context.onSurface),
  );

  Widget _algorithm(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(
      horizontal: ElementSpacing.horizontal,
      vertical: ElementSpacing.vertical,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(BorderRadiusX.inner),
      color: context.getAlgorithmContainerColor(encryptBox.algorithm),
    ),
    child: Row(
      spacing: ElementSpacing.horizontal,
      children: [
        Icon(
          Icons.enhanced_encryption,
          color: context.getAlgorithmColor(encryptBox.algorithm),
        ),
        Text(
          encryptBox.algorithm,
          style: context.label?.copyWith(color: context.onSurface),
        ),
      ],
    ),
  );
}
