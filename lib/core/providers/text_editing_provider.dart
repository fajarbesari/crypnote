import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_editing_provider.g.dart';

@riverpod
TextEditingController textEditingController(
  Ref ref, {
  required String label,
  VoidCallback? listener,
}) {
  final controller = TextEditingController();

  if (listener != null) controller.addListener(listener);

  return controller;
}
