import 'text_editing_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_editing_iterable_provider.g.dart';

@riverpod
Iterable<String?> textEditingIterable(Ref ref, String id) sync* {
  final text = ref.watch(textEditingControllerProvider(label: id));

  yield text.text;
}
