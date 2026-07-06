import 'package:crypnote/core/utils/uuid_value_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'crypnote.freezed.dart';
part 'crypnote.g.dart';

@freezed
abstract class Crypnote with _$Crypnote {
  const factory Crypnote({
    @UuidValueConverter() required UuidValue id,
    required int userId,
    required String body,
    DateTime? createdAt,
    @Default(false) bool isCompleted,
    @Default(ImportanceLevel.levelFour) ImportanceLevel importanceLevel,
  }) = _Crypnote;

  factory Crypnote.fromJson(Map<String, dynamic> json) =>
      _$CrypnoteFromJson(json);
}

enum ImportanceLevel {
  levelOne(1),
  levelTwo(2),
  levelThree(3),
  levelFour(4);

  const ImportanceLevel(this.levelIndicate);

  final int levelIndicate;

  static ImportanceLevel fromInt(int? value) {
    return ImportanceLevel.values.firstWhere(
      (lvl) => lvl.levelIndicate == value,
      orElse: () => ImportanceLevel.levelFour,
    );
  }

  static ImportanceLevel fromName(String? value) {
    return ImportanceLevel.values.firstWhere(
      (lvl) => lvl.name == value,
      orElse: () => ImportanceLevel.levelFour,
    );
  }
}

extension CrypnoteDbX on Crypnote {
  /// Convert to a [Map<String, dynamic>] for sqflite
  Map<String, dynamic> toDbMap() => {
    "id": id.toString(),
    "userId": userId,
    "body": body,
    "createdAt": createdAt?.toIso8601String(),
    "isCompleted": isCompleted == true ? 1 : 0,
    "importanceLevel": importanceLevel.levelIndicate,
  };

  /// Reconstruct from a sqflite row
  static Crypnote fromDbMap(Map<String, dynamic> map) => Crypnote(
    id: UuidValue.fromString(map['id'] as String),
    userId: map["userId"] as int,
    body: map["body"] as String,
    createdAt: map["createdAt"] != null
        ? DateTime.parse(map["createdAt"] as String)
        : null,
    isCompleted: (map["isCompleted"]) == 1 ? true : false,
    importanceLevel: ImportanceLevel.fromName(map['importanceLevel']),
  );
}
