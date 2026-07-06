import 'package:crypnote/core/controllers/current_language_controller.dart';

import '../../../../../core/providers/text_editing_iterable_provider.dart';
import '../../../../../core/locator_service.dart';
import '../../../domain/models/register_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validation_iterable_provider.g.dart';

@riverpod
Iterable<String?> passwordValidation(Ref ref, String label) sync* {
  final register = locator<RegisterModel>();
  final lang = ref.watch(currentLanguageControllerProvider.notifier).current;

  final text = ref.watch(textEditingIterableProvider(label));

  for (var tex in text) {
    yield register.passwordValidator(
      tex,
      lang!.emptyPasswordValidation,
      lang.charPasswordValidation,
    );
  }
}
