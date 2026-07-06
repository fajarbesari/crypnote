import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../entities/lang.dart';
import '../../services/preferences.dart';
import '../locator_service.dart';

class LanguageModel {
  final _prefs = locator<Preferences>();

  final String _langKey = 'LANGUAGE_KEY';

  Future<Lang> loadEnglishLang() async {
    final jsonString = await rootBundle.loadString('assets/lang/app_en.json');
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Buat instance Lang dari JSON
    return Lang.fromJson(jsonMap);
  }

  Future<Lang> modifyLanguage(Lang lang) async {
    unawaited(_prefs.send(_langKey, lang.id));
    return lang;
  }

  Future<Lang> saveLanguage(Lang lang) async {
    unawaited(_prefs.send(_langKey, lang.id));
    return lang;
  }
}
