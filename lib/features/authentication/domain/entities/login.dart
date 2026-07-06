import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
abstract class Login with _$Login {
  const factory Login({
    int? id,
    required String username,
    required String password,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}

extension LoginDbX on Login {
  /// Convert to a [Map<String, dynamic>] for sqflite
  Map<String, dynamic> toDbMap() => {
    "id": id,
    "username": username,
    "password": password,
  };

  /// Reconstruct from a sqflite row
  static Login fromDbMap(Map<String, dynamic> map) => Login(
    id: map["id"] as int?,
    username: map["username"] as String,
    password: map["password"] as String,
  );
}
