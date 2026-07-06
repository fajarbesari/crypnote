import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:crypnote/core/usesCase/validator_use_case.dart';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pin_validation_provider.g.dart';

@riverpod
Stream<bool> pinValidation(Ref ref) async* {
  final validator = locator<ValidatorUseCase>();

  final text = ref.watch(textEditingControllerProvider(label: 'pin-dialog'));
  final user = ref.watch(currentUserControllerProvider);

  final isValid =
      await user.whenOrNull(
        data: (data) => validator.pinValidation(text.text, data!),
      ) ??
      false;

  yield isValid;
}
