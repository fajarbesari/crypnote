import 'package:uuid/uuid_value.dart';

extension UuidValueX on UuidValue {
  static UuidValue fromJson(String json) => UuidValue.fromString(json);

  String toJson(UuidValue object) => object.toString();
}
