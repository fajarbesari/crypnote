import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxService {
  final String _appConfigBoxName = 'App_Config_Box';

  Future<Box<String>> get box => Hive.openBox(_appConfigBoxName);

  Future<String?> read(String key) async {
    try {
      return (await box).get(key);
    } catch (e) {
      return null;
    }
  }

  Future<bool> insert(String key, String value) async {
    try {
      (await box).put(key, value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> delete(String key) async {
    try {
      (await box).delete(key);
      return true;
    } catch (e) {
      return false;
    }
  }
}
