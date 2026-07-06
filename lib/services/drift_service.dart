import 'package:drift/drift.dart';

// part 'drift_service.g.dart';

@DataClassName('User')
class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get login => text()();
  TextColumn get firstname => text().nullable()();
  TextColumn get lastname => text().nullable()();
  TextColumn get pin => text().nullable()();
}

@DataClassName('EncryptBox')
class EncryptBox extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get cipherText => text().nullable()();
  TextColumn get mac => text().nullable()();
  TextColumn get nonce => text().nullable()();
  TextColumn get secretKey => text().nullable()();
}

// @DriftDatabase(tables: [User, EncryptBox])
// class DriftService extends _$DriftService {}
