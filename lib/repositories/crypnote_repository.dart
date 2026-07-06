import 'dart:convert';

import 'package:crypnote/core/utils/codecrypt.dart';
import 'package:cryptography/cryptography.dart';

import '../features/crypnote/domain/entities/crypnote.dart';
import '../features/crypnote/domain/entities/encryptbox.dart';
import '../core/exceptions/crypnote_exception.dart';
import '../services/encryptor_service.dart';
import '../services/sqflite_service.dart';
import '../core/locator_service.dart';

class CrypnoteRepository {
  final _sqfliteService = locator<SqfliteService>();
  final _encryptor = locator<EncryptorService>();

  Cipher get cipher => _encryptor.algorithm;
  List<int>? get modifiedSecretKey => _encryptor.modifiedKey;

  Future<List<Crypnote>> getById(int userId) async {
    final records = await _sqfliteService.take(
      SqfliteService.databaseCrypnoteTableName,
      where: 'userId = ?',
      whereArgs: [userId],
    );
    // decryption

    final encryptboxes = records
        .map((e) => EncryptBoxDbX.fromDbMap(e))
        .where((e) => e.deletedAt == null)
        .toList();

    final crypnotes = await Future.wait(
      encryptboxes.map((e) => _encryptor.decrypt(e)),
    );

    return crypnotes.map((e) => CrypnoteDbX.fromDbMap(jsonDecode(e))).toList();
  }

  // updating cryptnote with current algorithm and scret key
  Future<EncryptBox> updateById(
    int encryptBoxId,
    Crypnote updatedCrypnote,
  ) async {
    try {
      // fetching to db by id
      final records = await _sqfliteService.take(
        SqfliteService.databaseCrypnoteTableName,
        where: 'id = ?',
        whereArgs: [encryptBoxId],
        limit: 1,
      );

      // deserialize
      final find = EncryptBoxDbX.fromDbMap(
        records.singleWhere((e) => e['id'] == encryptBoxId),
      );

      // make encryption to updated note
      final crypnoteString = jsonEncode(updatedCrypnote);
      final encryption = await _encryptor.encrypt(crypnoteString);

      // combine the existing encryptbox properties with new encryption
      // the encryption produce new secret box which is consist of cipher text, nonce and mac
      // whereas algorithm and secrey key filled with current chiper and current modifier secret key
      // modified secret key is the key changer emition from aio secret key depend on the current cipher
      // if the current cipher is aesgm, it will temporary saved to modified key and have 16 bit length
      final updatedEncryptBox = find.copyWith(
        algorithm: _encryptor.algorithm.name,
        cipherText: encryption!.cipherText,
        nonce: encryption.nonce,
        mac: encryption.mac.bytes,
        secretKey: _encryptor.modifiedKey!,
      );

      // update to sqflite
      final result = await _sqfliteService.update(
        databaseTableName: SqfliteService.databaseCrypnoteTableName,
        updatedValue: updatedEncryptBox.toDbMap(),
      );

      // return
      return EncryptBoxDbX.fromDbMap(result);
    } catch (e) {
      throw CrypnoteException(
        'Encryptbox with id $encryptBoxId could not be updated',
      );
    }
  }

  Future<EncryptBox?> encryption(
    Crypnote crypnote,
    DateTime? scheduleAt,
  ) async {
    try {
      // convert crypnotebox to string
      final crypnoteString = jsonEncode(crypnote);
      final secretBox = await _encryptor.encrypt(crypnoteString);

      if (secretBox == null) return null;

      final codecrypt = CodecryptHelper.generate(crypnote.body.length);

      final encryptBox = EncryptBox(
        algorithm: cipher.name,
        userId: crypnote.userId,
        codecrypt: codecrypt,
        cipherText: secretBox.cipherText,
        nonce: secretBox.nonce,
        mac: secretBox.mac.bytes,
        secretKey: modifiedSecretKey!,
        scheduleAt: scheduleAt,
      );

      // store encrypted to repository
      final result = await _sqfliteService.insert(
        SqfliteService.databaseCrypnoteTableName,
        encryptBox.toDbMap(),
      );
      return EncryptBoxDbX.fromDbMap(result);
    } catch (e) {
      rethrow;
    }
  }
}
