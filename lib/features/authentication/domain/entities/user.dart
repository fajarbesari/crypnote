import 'dart:convert';

import 'login.dart';
import 'pin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
    required Login login,
    String? firstname,
    String? lastname,

    Pin? pin,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserDbX on User {
  /// Convert to a [Map<String, dynamic>] for sqflite

  String get fullname => '${firstname ?? ''}${lastname ?? ''}';

  Map<String, dynamic> toDbMap() => {
    // to db map that execute auto increment inside?
    "id": id,
    "login": jsonEncode(login.toDbMap()),
    "firstname": firstname,
    "lastname": lastname,
    "pin": pin != null ? jsonEncode(pin!.toJson()) : null,
  };

  /// Deserialize from a sqflite row
  static User fromDbMap(Map<String, dynamic> map) => User(
    id: map["id"] as int?,
    login: LoginDbX.fromDbMap(
      (jsonDecode(map["login"] as String) as Map<String, dynamic>),
    ),
    firstname: map["firstname"] as String?,
    lastname: map["lastname"] as String?,
    pin: map["pin"] != null
        ? PinDbX.fromDbMap(
            (jsonDecode(map["pin"] as String) as Map<String, dynamic>),
          )
        : null,
  );
}
