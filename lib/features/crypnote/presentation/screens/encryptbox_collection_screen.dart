import 'package:crypnote/features/crypnote/presentation/widgets/encryptbox_collection/collection.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EncryptionBoxCollectionScreen extends HookConsumerWidget {
  const EncryptionBoxCollectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigateToEncryptCrypnote() => context.push('/encryption/create');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encryption',
          style: context.headlineLarge?.copyWith(color: context.onSurface),
        ),
        actions: [RecycleCrypnote()],
      ),
      body: SafeArea(child: CollectionView()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToEncryptCrypnote,
        label: Text('Encrypt Crypnote'),
      ),
    );
  }
}

class RecycleCrypnote extends ConsumerWidget {
  const RecycleCrypnote({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigateToRecycle() => context.push('/encryption/recycle');

    return IconButton(
      onPressed: navigateToRecycle,
      icon: Icon(Icons.recycling),
    );
  }
}
