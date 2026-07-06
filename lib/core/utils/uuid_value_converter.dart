import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_value.dart';

class UuidValueConverter implements JsonConverter<UuidValue, String> {
  const UuidValueConverter();

  @override
  UuidValue fromJson(String json) => UuidValue.fromString(json);

  @override
  String toJson(UuidValue object) => object.toString();
}
