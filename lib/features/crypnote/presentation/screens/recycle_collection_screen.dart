import 'package:crypnote/core/utils/extensions_date_time.dart';
import 'package:crypnote/core/utils/extensions_encryptbox.dart';
import 'package:crypnote/features/crypnote/providers/recycle_encryptbox_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecycleCollectionScreen extends ConsumerWidget {
  const RecycleCollectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recycle',
          style: context.titleLarge?.copyWith(color: context.onSurface),
        ),
      ),
      body: RecycleCollectionView(),
    );
  }
}

class RecycleCollectionView extends ConsumerWidget {
  const RecycleCollectionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(recycleEncryptBoxControllerProvider);

    return ListView.builder(
      itemCount: state.length,
      itemBuilder: (context, index) {
        return _container(context, RecycleTile(encryptBox: state[index]));
      },
    );
  }

  Widget _container(BuildContext context, Widget child) => Container(
    padding: EdgeInsets.symmetric(horizontal: LayoutSpacing.horizontal),
    child: child,
  );
}

class RecycleTile extends ConsumerWidget {
  const RecycleTile({super.key, required this.encryptBox});

  final EncryptBox encryptBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: ElementSpacing.horizontal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: ElementSpacing.vertical,
              children: [
                Text(
                  encryptBox.toUuid,
                  style: context.titleSmall?.copyWith(color: context.onSurface),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'deleted at',
                      style: context.label?.copyWith(
                        color: context.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      encryptBox.deletedAt?.formattedDateMonth ?? '',
                      style: context.titleLarge?.copyWith(
                        color: context.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            RestoreDestroyTrailing(encryptBox: encryptBox),
          ],
        ),
      ),
    );
  }
}

class RestoreDestroyTrailing extends ConsumerWidget {
  const RestoreDestroyTrailing({super.key, required this.encryptBox});

  final EncryptBox encryptBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(recycleEncryptBoxControllerProvider.notifier);

    void destroy() async {
      if (encryptBox.id == null) return;
      await notifier.destroyById(encryptBox.id!);
    }

    void restore() async {
      if (encryptBox.id == null) return;
      await notifier.restoreById(encryptBox.id!);
    }

    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tooltip(
            message: 'Destroy Encryption',
            child: Card.filled(
              color: context.errorBackground,
              child: IconButton(
                onPressed: destroy,
                icon: Icon(Icons.deblur, color: context.onErrorBackground),
              ),
            ),
          ),
          Tooltip(
            message: 'Restore Encryption',
            child: Card.filled(
              color: context.primaryBackground,
              child: IconButton(
                onPressed: restore,
                icon: Icon(
                  Icons.restore_from_trash,
                  color: context.onPrimaryBackground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
