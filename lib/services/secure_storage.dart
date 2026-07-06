import '../core/exceptions/crypnote_exception.dart';
import 'sqflite_service.dart';
import '../features/authentication/domain/entities/user.dart';
import '../core/locator_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage =
      locator<FlutterSecureStorage>();
  final SqfliteService _databaseHelper = locator<SqfliteService>();

  // save value with username key
  Future<bool> save(String key, String value) async {
    try {
      await _flutterSecureStorage.write(key: key, value: value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String?> read(String key) async {
    try {
      return await _flutterSecureStorage.read(key: key);
    } catch (e) {
      rethrow;
    }
  }

  // query based on the password hash
  Future<Map<String, dynamic>> query(String passwordHash) async {
    try {
      // get user from db with firstname
      final users = await _databaseHelper.take(
        SqfliteService.databaseUserTableName,
        // where: "json_extract(loginModel, '\$.password') = ?",
        // whereArgs: [passwordHash],
        // limit: 1,
      );

      final user = UserDbX.fromDbMap(
        users.firstWhere(
          (element) =>
              UserDbX.fromDbMap(element).login.password == passwordHash,
        ),
      );

      // read user on secure storage
      final userSecure = await _flutterSecureStorage.read(key: passwordHash);

      // if empty throw error
      if (userSecure == null) {
        throw CrypnoteException('could not found value key');
      }

      // if value doesn't contain firstname throw error
      if (!userSecure.contains(user.login.password)) {
        throw CrypnoteException('could not found user');
      }

      return user.toDbMap();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> delete(String key) async {
    try {
      await _flutterSecureStorage.delete(key: key);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  static String generateKeyFromValue(String value) => '$value${value.length}';
}
