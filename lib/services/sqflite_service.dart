import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart'
    show databaseFactoryFfiWeb;

class SqfliteService {
  static final int databaseVersion = 2;
  static final String databaseCrypnoteTableName = 'encryptbox';
  static final String databaseUserTableName = 'user';

  // open the database by the path
  Future<Database> initialize() async {
    DatabaseFactory databaseFactory;
    if (kIsWeb) {
      // Use the specialized web factory for persistent storage
      databaseFactory = databaseFactoryFfiWeb;
    } else {
      // Standard initialization for Mobile/Desktop
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;
    }
    var path = join(await getDatabasesPath(), 'crypnote.db');

    return await databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: databaseVersion,
        onCreate: (db, version) async {
          await db.execute(
            'CREATE TABLE $databaseUserTableName (id INTEGER PRIMARY KEY AUTOINCREMENT, login TEXT NOT NULL, firstname TEXT, lastname TEXT , pin TEXT)',
          );
          await db.execute(
            'CREATE TABLE $databaseCrypnoteTableName (id INTEGER PRIMARY KEY AUTOINCREMENT, algorithm TEXT NOT NULL, userId INTEGER NOT NULL, codecrypt INTEGER NOT NULL, cipherText TEXT NOT NULL, nonce TEXT NOT NULL, mac TEXT NOT NULL, secretKey TEXT NOT NULL, latestDecryptionAt TEXT, scheduleAt TEXT , deletedAt TEXT, FOREIGN KEY(userId) REFERENCES user(id))',
          );
        },
      ),
    );
  }

  Future<Map<String, dynamic>> insert(
    String databaseTableName,
    Map<String, dynamic> value,
  ) async {
    try {
      final db = await initialize();

      final row = await db.insert(databaseTableName, value);
      final record = Map<String, dynamic>.from(value);

      record['id'] = row;

      return record;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> take(
    String databaseTableName, {
    String? where,
    List<Object?>? whereArgs,
    int? limit,
  }) async {
    try {
      final db = await initialize();

      return await db.query(
        databaseTableName,
        where: where,
        whereArgs: whereArgs,
        limit: limit,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<int> delete(String databaseTableName, int id) async {
    try {
      final db = await initialize();

      return await db.delete(
        databaseTableName,
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> update({
    required String databaseTableName,
    required Map<String, dynamic> updatedValue,
  }) async {
    try {
      final db = await initialize();

      final row = await db.insert(
        databaseTableName,
        updatedValue,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      final record = Map<String, dynamic>.from(updatedValue);

      record['id'] = row;

      return record;
    } catch (e) {
      rethrow;
    }
  }
}
