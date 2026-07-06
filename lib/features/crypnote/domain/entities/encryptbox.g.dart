// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encryptbox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptBox _$EncryptBoxFromJson(Map<String, dynamic> json) => _EncryptBox(
  id: (json['id'] as num?)?.toInt(),
  algorithm: json['algorithm'] as String,
  userId: (json['userId'] as num).toInt(),
  codecrypt: (json['codecrypt'] as num).toInt(),
  cipherText: (json['cipherText'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  nonce: (json['nonce'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  mac: (json['mac'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  secretKey: (json['secretKey'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  latestDecryptionAt: json['latestDecryptionAt'] == null
      ? null
      : DateTime.parse(json['latestDecryptionAt'] as String),
  scheduleAt: json['scheduleAt'] == null
      ? null
      : DateTime.parse(json['scheduleAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
);

Map<String, dynamic> _$EncryptBoxToJson(_EncryptBox instance) =>
    <String, dynamic>{
      'id': instance.id,
      'algorithm': instance.algorithm,
      'userId': instance.userId,
      'codecrypt': instance.codecrypt,
      'cipherText': instance.cipherText,
      'nonce': instance.nonce,
      'mac': instance.mac,
      'secretKey': instance.secretKey,
      'latestDecryptionAt': instance.latestDecryptionAt?.toIso8601String(),
      'scheduleAt': instance.scheduleAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
