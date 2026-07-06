import 'package:crypnote/features/crypnote/providers/decryption_controller.dart';
import 'package:crypnote/features/crypnote/providers/encryptbox_collection_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryptbox_collection/encryptbox_tile.dart';
import 'package:crypnote/features/crypnote/presentation/widgets/encryptbox_collection/pin_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CollectionView extends HookConsumerWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collection = ref.watch(encryptBoxCollectionControllerProvider);

    final notifier = ref.watch(decryptionControllerProvider.notifier);

    final validated = useState<bool?>(null);

    void onDecryption(EncryptBox encryptBox) async {
      validated.value = await showDialog<bool>(
        context: context,
        builder: (context) => PinDialogDecryption(),
      );

      if (validated.value == true && context.mounted) {
        notifier.decryption(encryptBox);
        context.push('/decryption');
      }
    }

    if (collection.encryptBoxCollection == null) {
      return Center(child: Text('There are no collection made'));
    }

    return ListView.builder(
      itemCount: collection.encryptBoxCollection?.length,
      itemBuilder: (context, index) {
        final encryptBox = collection.encryptBoxCollection![index];
        return InkWell(
          onTap: () => onDecryption(encryptBox),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementSpacing.horizontal,
            ),
            child: EncryptBoxTile(encryptBox: encryptBox),
          ),
        );
      },
    );
  }
}
