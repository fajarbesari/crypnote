import 'package:crypnote/core/controllers/current_language_controller.dart';
import 'package:crypnote/features/authentication/presentation/widgets/login/login_button.dart';
import 'package:crypnote/l10n/app_localization.dart';
import 'package:crypnote/widgets/localization_pop_menu.dart';

import '../../providers/current_auth_notifier.dart';
import '../../../../core/static/spacing.dart';
import '../../../../core/utils/extensions_build_context.dart';
import '../../../../core/components/header.dart';
import '../widgets/login/form_login.dart';
import '../widgets/login/headline_login.dart';
import '../widgets/login/register_navigator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(currentLanguageControllerProvider);

    ref.listen(currentAuthProvider, (_, value) {
      if (value == AuthGuard.authenticated) {
        context.showSnackBar(lang?.authenticationsuccessful ?? '');
      }
    });

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: LayoutSpacing.horizontal,
            vertical: LayoutSpacing.vertical,
          ),
          child: SingleChildScrollView(
            child: Column(
              spacing: LayoutSpacing.marginVertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadlineLogin(),
                SizedBox(height: LayoutSpacing.spacer),
                FormLogin(),
                LoginButton(),
                Center(child: RegisterNavigatorButton()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
