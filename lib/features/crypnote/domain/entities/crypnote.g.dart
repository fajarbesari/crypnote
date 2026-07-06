// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypnote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Crypnote _$CrypnoteFromJson(Map<String, dynamic> json) => _Crypnote(
  id: const UuidValueConverter().fromJson(json['id'] as String),
  userId: (json['userId'] as num).toInt(),
  body: json['body'] as String,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  isCompleted: json['isCompleted'] as bool? ?? false,
  importanceLevel:
      $enumDecodeNullable(_$ImportanceLevelEnumMap, json['importanceLevel']) ??
      ImportanceLevel.levelFour,
);

Map<String, dynamic> _$CrypnoteToJson(_Crypnote instance) => <String, dynamic>{
  'id': const UuidValueConverter().toJson(instance.id),
  'userId': instance.userId,
  'body': instance.body,
  'createdAt': instance.createdAt?.toIso8601String(),
  'isCompleted': instance.isCompleted,
  'importanceLevel': _$ImportanceLevelEnumMap[instance.importanceLevel]!,
};

const _$ImportanceLevelEnumMap = {
  ImportanceLevel.levelOne: 'levelOne',
  ImportanceLevel.levelTwo: 'levelTwo',
  ImportanceLevel.levelThree: 'levelThree',
  ImportanceLevel.levelFour: 'levelFour',
};
