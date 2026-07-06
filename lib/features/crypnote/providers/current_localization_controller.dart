import 'dart:async';
import 'dart:developer';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/l10n/app_localization.dart';
import 'package:crypnote/services/preferences.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_localization_controller.g.dart';

@riverpod
class CurrentLocalizationController extends _$CurrentLocalizationController {
  final String localeKey = 'LOCALE_KEY';
  final prefs = locator<Preferences>();

  @override
  Locale? build() {
    unawaited(initialize());
    return null;
  }

  List<Locale> supportedLocale = AppLocalizations.supportedLocales;

  List<LocalizationsDelegate> get localizationDelegates =>
      AppLocalizations.localizationsDelegates;

  static Future<void> initializeFormattedDateTime() =>
      initializeDateFormatting();

  Future<void> initialize() async {
    final locale = await prefs.get(localeKey);

    if (locale == null) return;

    state = Locale(locale, locale.toUpperCase());
  }

  Future<void> changeLocale(Locale updatedLocale) async {
    final locale = await prefs.send(localeKey, updatedLocale.toLanguageTag());

    state = switch (locale) {
      true => updatedLocale,
      false => null,
    };
    log('localize update to $state');
  }

  Future<void> storeLocale() async {
    final current = state?.toLanguageTag();

    if (current == null) return;

    await prefs.send(localeKey, current);

    log('$current locale prefs stored');

    state = Locale(current, current.toUpperCase());
  }
}
