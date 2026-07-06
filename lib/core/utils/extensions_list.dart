import 'dart:convert';

extension ListX on List<int> {
  String get formattedBase64Encode => base64Encode(this).substring(0, 24);
}
