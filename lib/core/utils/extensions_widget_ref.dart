import 'package:crypnote/l10n/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension WidgetRefX on WidgetRef {
  AppLocalizations? localization(BuildContext context) =>
      AppLocalizations.of(context);
}
