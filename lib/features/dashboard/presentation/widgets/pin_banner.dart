import 'dart:async';

import 'package:crypnote/core/static/elevation.dart';

import '../../../../core/static/spacing.dart';
import '../../../../core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PinMaterialBanner extends ConsumerWidget {
  const PinMaterialBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onCreatePin() => unawaited(context.push('/createPin'));

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
      ),
      child: MaterialBanner(
        elevation: ElevationMatter.medium,
        backgroundColor: context.error,
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        content: Text(
          'SET UP PIN DECRYPTION !',
          style: context.body?.copyWith(color: context.onError),
        ),
        leading: Icon(Icons.info_outline, color: context.onError),
        actions: <Widget>[
          TextButton(
            onPressed: onCreatePin,
            child: Text(
              'CREATE',
              style: context.body?.copyWith(
                color: context.onError,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
