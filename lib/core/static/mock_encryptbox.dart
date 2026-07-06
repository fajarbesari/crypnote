import 'dart:convert';
import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/services/encryptor_service.dart';
import 'package:crypnote/core/utils/codecrypt.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:uuid/uuid_value.dart';

class MockEncryptbox {
  final _encryptor = locator<EncryptorService>();

  final now = DateTime.now();

  List<Crypnote> get crypnotes => [
    Crypnote(
      id: UuidValue.fromString('1'),
      userId: 1,
      body: "Crypnote message 1",
      createdAt: now,
      isCompleted: false,
      importanceLevel: ImportanceLevel.levelOne,
    ),
    Crypnote(
      id: UuidValue.fromString('2'),
      userId: 1,
      body: "Crypnote message 2",
      createdAt: now,
      isCompleted: true,
      importanceLevel: ImportanceLevel.levelTwo,
    ),
    Crypnote(
      id: UuidValue.fromString('3'),
      userId: 1,
      body: "Crypnote message 3",
      createdAt: now,
      isCompleted: false,
      importanceLevel: ImportanceLevel.levelThree,
    ),
    Crypnote(
      id: UuidValue.fromString('4'),
      userId: 1,
      body: "Crypnote message 4",
      createdAt: now,
      isCompleted: true,
      importanceLevel: ImportanceLevel.levelFour,
    ),
    Crypnote(
      id: UuidValue.fromString('5'),
      userId: 1,
      body: "Crypnote message 5",
      createdAt: now,
      isCompleted: false,
      importanceLevel: ImportanceLevel.levelOne,
    ),
    Crypnote(
      id: UuidValue.fromString('6'),
      userId: 1,
      body: "Crypnote message 6",
      createdAt: now,
      isCompleted: true,
      importanceLevel: ImportanceLevel.levelTwo,
    ),
    Crypnote(
      id: UuidValue.fromString('7'),
      userId: 1,
      body: "Crypnote message 7",
      createdAt: now,
      isCompleted: false,
      importanceLevel: ImportanceLevel.levelThree,
    ),
    Crypnote(
      id: UuidValue.fromString('8'),
      userId: 1,
      body: "Crypnote message 8",
      createdAt: now,
      isCompleted: true,
      importanceLevel: ImportanceLevel.levelFour,
    ),
    Crypnote(
      id: UuidValue.fromString('9'),
      userId: 1,
      body: "Crypnote message 9",
      createdAt: now,
      isCompleted: false,
      importanceLevel: ImportanceLevel.levelOne,
    ),
    Crypnote(
      id: UuidValue.fromString('10'),
      userId: 1,
      body: "Crypnote message 10",
      createdAt: now,
      isCompleted: true,
      importanceLevel: ImportanceLevel.levelTwo,
    ),
    // … continue this pattern up to id: 100
  ];

  Future<List<Crypnote>> mockCrypotes(int userId) async {
    return crypnotes.where((e) => e.userId == userId).toList();
  }

  Future<List<EncryptBox>> mockEncryptBox(int userId) async {
    List<EncryptBox> cache = [];

    for (var note in crypnotes) {
      final secretBox = await _encryptor.encrypt(jsonEncode(note));
      final now = DateTime.now();
      final code = CodecryptHelper.generate(secretBox?.cipherText.length ?? 1);

      cache.add(
        EncryptBox(
          algorithm: _encryptor.algorithm.name,
          userId: note.userId,
          codecrypt: code,
          cipherText: secretBox!.cipherText,
          nonce: secretBox.nonce,
          mac: secretBox.mac.bytes,
          secretKey: _encryptor.modifiedKey!,
          latestDecryptionAt: now.subtract(Duration(days: now.millisecond)),
        ),
      );
    }
    return cache.where((e) => e.userId == userId).toList();
  }
}
