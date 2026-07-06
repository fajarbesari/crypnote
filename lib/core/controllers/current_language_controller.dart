import 'dart:async';

import 'package:crypnote/core/exceptions/crypnote_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/lang.dart';
import '../locator_service.dart';
import '../usesCase/language_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_language_controller.g.dart';
part 'current_language_controller.freezed.dart';

@freezed
abstract class LanguageState with _$LanguageState {
  const factory LanguageState({
    List<Lang>? language,
    Lang? lang,
    String? error,
    bool? isLoading,
  }) = _LanguageState;
}

@riverpod
class CurrentLanguageController extends _$CurrentLanguageController {
  final LanguageModel _languageModel = locator<LanguageModel>();

  @override
  Lang? build() {
    return null;
  }

  void initialize() async {
    state = await _languageModel.loadEnglishLang();
  }

  Lang? get current => state;

  Future<void> modifyLanguage(Lang lang) async {
    state = await _languageModel.modifyLanguage(lang);
  }

  Future<void> saveLanguage() async {
    final current = state;
    if (current == null) throw CrypnoteException('Could not save lang');
    await _languageModel.saveLanguage(current);
  }
}
