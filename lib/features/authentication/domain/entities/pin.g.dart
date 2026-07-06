// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pin _$PinFromJson(Map<String, dynamic> json) =>
    _Pin(id: (json['id'] as num?)?.toInt(), pin: json['pin'] as String);

Map<String, dynamic> _$PinToJson(_Pin instance) => <String, dynamic>{
  'id': instance.id,
  'pin': instance.pin,
};
