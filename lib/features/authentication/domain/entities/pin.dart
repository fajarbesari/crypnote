import 'package:freezed_annotation/freezed_annotation.dart';

part 'pin.freezed.dart';
part 'pin.g.dart';

@freezed
abstract class Pin with _$Pin {
  const factory Pin({int? id, required String pin}) = _Pin;

  factory Pin.fromJson(Map<String, dynamic> json) => _$PinFromJson(json);
}

extension PinDbX on Pin {
  /// Convert to a [Map<String, dynamic>] for sqflite

  Map<String, dynamic> toDbMap() => {
    // to db map that execute auto increment inside?
    "id": id,
    "pin": pin,
  };

  /// Deserialize from a sqflite row
  static Pin fromDbMap(Map<String, dynamic> map) =>
      Pin(id: map["id"] as int?, pin: map['pin'] as String);
}
