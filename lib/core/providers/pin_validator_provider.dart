import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/usesCase/validator_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pin_validator_provider.g.dart';

@riverpod
Stream<String?> pinValidator(Ref ref, String id) async* {
  final validator = locator<ValidatorUseCase>();

  final text = ref.watch(textEditingControllerProvider(label: id));

  yield validator.pinValidator(text.text);
}
