import 'dart:developer';

import '../core/exceptions/crypnote_exception.dart';
import 'hive_box_service.dart';
import 'local_file_service.dart';
import 'secure_storage.dart';
import '../core/locator_service.dart';

class Preferences {
  final SecureStorage _secureStorage = locator<SecureStorage>();
  final HiveBoxService _hiveBoxService = locator<HiveBoxService>();
  final LocalFileService _localFileService = locator<LocalFileService>();

  Future<bool> send(String key, String value) async {
    // store to token the persitance minimal one service could carry the value
    try {
      final result = await Future.wait([
        _hiveBoxService.insert(key, value),
        // _secureStorage.save(key, value),
        // _localFileService.insert(key, value),
      ]);

      // if one of them true should be return true
      // if all false should be return false

      // every => if some test is false, so valuate false
      // any => if any test is true, so valuate true

      return result.any((e) => e == true);
    } catch (e, s) {
      throw CrypnoteException(s.toString());
    }
  }

  Future<bool> delete(String key) async {
    try {
      final result = await Future.wait([
        _hiveBoxService.delete(key),
        // _secureStorage.delete(key),
        // _localFileService.delete(key),
      ]);
      // return true jika ada minimal satu berhasil
      return result.any((e) => e == true);
    } catch (e) {
      throw CrypnoteException(e.toString());
    }
  }

  Future<String?> get(String key) async {
    try {
      final result = await Future.wait([
        _hiveBoxService.read(key),
        // _secureStorage.read(key),
        // _localFileService.get(key),
      ]);

      return result.firstWhere((e) => e != null, orElse: () => null);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
