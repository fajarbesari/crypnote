import 'dart:convert';

class EncryptboxUseCase {
  String toBase64Encoded(List<int> secretKeyBytes) =>
      base64Encode(secretKeyBytes).substring(0, 15);
}
