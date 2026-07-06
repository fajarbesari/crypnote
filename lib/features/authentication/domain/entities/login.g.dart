// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Login _$LoginFromJson(Map<String, dynamic> json) => _Login(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginToJson(_Login instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'password': instance.password,
};
