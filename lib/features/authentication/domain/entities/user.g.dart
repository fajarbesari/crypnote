// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  login: Login.fromJson(json['login'] as Map<String, dynamic>),
  firstname: json['firstname'] as String?,
  lastname: json['lastname'] as String?,
  pin: json['pin'] == null
      ? null
      : Pin.fromJson(json['pin'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'login': instance.login,
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'pin': instance.pin,
};
