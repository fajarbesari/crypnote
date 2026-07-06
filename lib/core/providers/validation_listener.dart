import 'package:crypnote/core/providers/text_editing_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validation_listener.g.dart';

@riverpod
Stream<String?> validationListener(
  Ref ref,
  Validator validator,
  String id,
) async* {
  final text = ref.watch(textEditingControllerProvider(label: id));

  final valid = validator.call(text.text);

  final stream = Stream.value(valid);

  await for (var val in stream) {
    yield val;
  }
}

typedef Validator = String? Function(String?);
