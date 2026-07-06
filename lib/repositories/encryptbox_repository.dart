import 'dart:convert';

import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/services/encryptor_service.dart';

import '../features/crypnote/domain/entities/encryptbox.dart';
import '../core/exceptions/crypnote_exception.dart';
import '../services/sqflite_service.dart';
import '../core/locator_service.dart';

class EncryptBoxRepository {
  final SqfliteService _sqfliteService = locator<SqfliteService>();
  final EncryptorService _encryptorService = locator<EncryptorService>();

  // init method to initialized the collection in the dashboard
  Future<List<EncryptBox>> get(int userId) async {
    try {
      final record = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'userId = ?',
        whereArgs: [userId],
      );

      return record
          .map((e) => EncryptBoxDbX.fromDbMap(e))
          .where((e) => e.deletedAt == null)
          .toList();
    } catch (e) {
      throw CrypnoteException('Could not get encryptbox with user id $userId');
    }
  }

  Future<List<EncryptBox>> recycle(int userId) async {
    try {
      final records = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'userId = ?',
        whereArgs: [userId],
      );

      return records
          .map((e) => EncryptBoxDbX.fromDbMap(e))
          .where((r) => r.deletedAt != null)
          .toList();
    } catch (e) {
      throw CrypnoteException(
        'Could not get deleted encryptbox with user id $userId',
      );
    }
  }

  Future<EncryptBox?> restoreById(int id) async {
    final records = await _sqfliteService.take(
      SqfliteService.databaseCrypnoteTableName,
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );

    final find = records.singleWhere((e) => e['id'] == id, orElse: () => {});

    if (find.isEmpty) return null;

    final maybeRestored = EncryptBoxDbX.fromDbMap(
      find,
    ).copyWith(deletedAt: null);

    final restored = await _sqfliteService.update(
      databaseTableName: SqfliteService.databaseCrypnoteTableName,
      updatedValue: maybeRestored.toDbMap(),
    );

    return EncryptBoxDbX.fromDbMap(restored);
  }

  Future<EncryptBox> getById(int encryptBoxId) async {
    final record = await _sqfliteService.take(
      SqfliteService.databaseCrypnoteTableName,
      where: 'id = ?',
      whereArgs: [encryptBoxId],
      limit: 1,
    );

    final find = record.singleWhere((e) => e['id'] == encryptBoxId);

    return EncryptBoxDbX.fromDbMap(find);
  }

  Future<EncryptBox?> deleteById(int id) async {
    try {
      final record = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'id = ?',
        whereArgs: [id],
        limit: 1,
      );

      final find = record.singleWhere((e) => e['id'] == id, orElse: () => {});

      if (find.isEmpty) return null;

      final deleted = EncryptBoxDbX.fromDbMap(
        find,
      ).copyWith(deletedAt: DateTime.now());

      final deletedEncyptbox = await _sqfliteService.update(
        databaseTableName: SqfliteService.databaseCrypnoteTableName,
        updatedValue: deleted.toDbMap(),
      );

      return EncryptBoxDbX.fromDbMap(deletedEncyptbox);
    } catch (e) {
      throw CrypnoteException('Could not delete encryptbox with id $id');
    }
  }

  // return row number deleted
  Future<int> destroyById(int id) async {
    try {
      return await _sqfliteService.delete(
        SqfliteService.databaseCrypnoteTableName,
        id,
      );
    } catch (e) {
      throw CrypnoteException(
        'EncrypBox with id $id could not be destroyed',
        e,
      );
    }
  }

  Future<EncryptBox> insert(String databaseTableName, EncryptBox value) async {
    try {
      final record = await _sqfliteService.insert(
        databaseTableName,
        value.toDbMap(),
      );
      return EncryptBoxDbX.fromDbMap(record);
    } catch (e) {
      throw CrypnoteException(
        'Encryptbox with id ${value.id} could not be inserted',
      );
    }
  }

  Future<Crypnote> decryptById(int encryptBoxId) async {
    try {
      final record = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'id = ?',
        whereArgs: [encryptBoxId],
        limit: 1,
      );

      final decrypted = await _encryptorService.decrypt(
        EncryptBoxDbX.fromDbMap(
          record.firstWhere((e) => e['id'] == encryptBoxId),
        ),
      );

      return CrypnoteDbX.fromDbMap(jsonDecode(decrypted));
    } catch (e) {
      throw CrypnoteException(e.toString());
    }
  }

  // updating encryptbox
  Future<EncryptBox> updateById(
    int encryptBoxId,
    EncryptBox updatedEncryptBox,
  ) async {
    try {
      final record = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'id = ?',
        whereArgs: [encryptBoxId],
        limit: 1,
      );

      final find = EncryptBoxDbX.fromDbMap(
        record.singleWhere((e) => e['id'] == encryptBoxId),
      );

      final updated = find.copyWith(
        id: updatedEncryptBox.id,
        userId: updatedEncryptBox.userId,
        algorithm: updatedEncryptBox.algorithm,
        cipherText: updatedEncryptBox.cipherText,
        nonce: updatedEncryptBox.nonce,
        mac: updatedEncryptBox.mac,
        secretKey: updatedEncryptBox.secretKey,
        latestDecryptionAt: updatedEncryptBox.latestDecryptionAt,
      );

      final result = await _sqfliteService.update(
        databaseTableName: SqfliteService.databaseCrypnoteTableName,
        updatedValue: updated.toDbMap(),
      );

      return EncryptBoxDbX.fromDbMap(result);
    } catch (e) {
      throw CrypnoteException(e.toString());
    }
  }
}
