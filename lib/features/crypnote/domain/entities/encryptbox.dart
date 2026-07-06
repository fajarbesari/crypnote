import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encryptbox.freezed.dart';
part 'encryptbox.g.dart';

@freezed
abstract class EncryptBox with _$EncryptBox {
  const factory EncryptBox({
    int? id,
    required String algorithm,
    required int userId,
    required int codecrypt,
    required List<int> cipherText,
    required List<int> nonce,
    required List<int> mac,
    required List<int> secretKey,
    DateTime? latestDecryptionAt,
    DateTime? scheduleAt,
    DateTime? deletedAt,
  }) = _EncryptBox;

  factory EncryptBox.fromJson(Map<String, dynamic> json) =>
      _$EncryptBoxFromJson(json);
}

extension EncryptBoxDbX on EncryptBox {
  Map<String, dynamic> toDbMap() => {
    "id": id,
    "algorithm": algorithm,
    "userId": userId,
    "codecrypt": codecrypt,
    "cipherText": jsonEncode(cipherText),
    "nonce": jsonEncode(nonce),
    "mac": jsonEncode(mac),
    "secretKey": jsonEncode(secretKey),
    "latestDecryptionAt": latestDecryptionAt?.toIso8601String(),
    "scheduleAt": scheduleAt?.toIso8601String(),
    "deletedAt": deletedAt?.toIso8601String(),
  };

  static EncryptBox fromDbMap(Map<String, dynamic> map) => EncryptBox(
    id: map["id"] as int?,
    algorithm: map['algorithm'],
    userId: map["userId"] as int,
    codecrypt: map["codecrypt"],
    cipherText: List<int>.from(jsonDecode(map["cipherText"] as String)),
    nonce: List<int>.from(jsonDecode(map["nonce"] as String)),
    mac: List<int>.from(jsonDecode(map["mac"] as String)),
    secretKey: List<int>.from(jsonDecode(map["secretKey"] as String)),
    latestDecryptionAt: map["latestDecryptionAt"] != null
        ? DateTime.parse(map["latestDecryptionAt"] as String)
        : null,
    scheduleAt: map["scheduleAt"] != null
        ? DateTime.parse(map["scheduleAt"] as String)
        : null,
    deletedAt: map["deletedAt"] != null
        ? DateTime.parse(map["deletedAt"] as String)
        : null,
  );
}
