import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/crypnote/providers/elapsed_vault_controller.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NearestVaultBadge extends HookConsumerWidget {
  const NearestVaultBadge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(elapsedVaultControllerProvider);
    final pin = ref.watch(currentUserControllerProvider).value?.pin?.pin;

    final pinState = useState<bool?>(null);

    void onNavigateToElapsed() async {
      // if (pin == null) return;

      // pinState.value = await showDialog(
      //   context: context,
      //   builder: (dialogCtx) => PinDialog(),
      // );

      // if (pinState.value == true && context.mounted) {
      // }
      context.push('/elapsedEncryptBox');
    }

    return Badge(
      label: Text(state.length.toString()),
      child: Card.filled(
        color: context.primary,
        child: IconButton(
          onPressed: onNavigateToElapsed,
          icon: Icon(Icons.wallet, color: context.onPrimary),
        ),
      ),
    );
  }
}
