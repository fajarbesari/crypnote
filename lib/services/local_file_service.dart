import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LocalFileService {
  final Map<String, dynamic> _content = {
    "localStorage": "persistance key-value pair",
  };

  Future<Directory> get directory async {
    final directory = await getApplicationCacheDirectory();
    return directory;
  }

  Future<File> get localFile async {
    final dir = await directory;
    final file = File('${dir.path}/local_file.json');

    if (!file.existsSync()) {
      // if doesnt exist create new file
      file.writeAsString(jsonEncode(_content));
    }

    return file;
  }

  Future<bool> insert(String key, String value) async {
    try {
      // take file for change
      final file = await localFile;

      // read file as string
      final jsonString = await file.readAsString();

      // decode to map
      final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

      // add new key-value pair
      jsonMap[key] = value;

      // create json as string
      final json = jsonEncode(jsonMap);

      // rewrite json file
      await file.writeAsString(json);

      return true;
    } catch (e) {
      throw Exception('cannot store to local ${e.toString()}');
    }
  }

  Future<String?> get(String key) async {
    // reference to json file
    final file = await localFile;

    // read content file as string
    final content = await file.readAsString();

    // decode to json
    final jsonMap = jsonDecode(content) as Map<String, dynamic>;

    // look up value by the key

    final value = jsonMap[key];

    return value;
  }

  Future<bool> delete(String key) async {
    try {
      // reference to json file
      final file = await localFile;

      // read content json as string
      final content = await file.readAsString();

      // decoded as map
      final jsonMap = jsonDecode(content) as Map<String, dynamic>;

      // look up for the key
      jsonMap.removeWhere((k, v) => k == key);

      // rewrite to file
      file.writeAsString(jsonEncode(jsonMap));

      return true;
    } catch (e) {
      return false;
    }
  }
}
