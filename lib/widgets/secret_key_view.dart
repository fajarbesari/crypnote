import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/core/utils/extensions_list.dart';
import 'package:cryptography/cryptography.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecretKeyView extends ConsumerWidget {
  const SecretKeyView({super.key, required this.secretKey});

  final SecretKey? secretKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return secretKey != null
        ? FutureBuilder(
            future: secretKey?.extractBytes(),
            builder: (_, s) => switch (s.connectionState) {
              ConnectionState.none => SizedBox.shrink(),
              ConnectionState.waiting => Text(
                'generating secret key',
                style: context.body?.copyWith(color: context.onSurface),
              ),
              ConnectionState.active => SizedBox.shrink(),
              ConnectionState.done => Text(
                s.requireData.formattedBase64Encode,
                maxLines: 3,
                style: context.label?.copyWith(color: context.onSurface),
              ),
            },
          )
        : Text(
            'secret key has not been generated',
            style: context.body?.copyWith(color: context.onSurface),
          );
  }
}
