import '../features/authentication/domain/entities/user.dart';
import '../services/sqflite_service.dart';
import '../core/locator_service.dart';

class UserRepository {
  final _sqfliteService = locator<SqfliteService>();

  Future<List<User>> get() async {
    final records = await _sqfliteService.take(
      SqfliteService.databaseUserTableName,
    );

    if (records.isNotEmpty) {
      return records.map((e) => UserDbX.fromDbMap(e)).toList();
    }
    return [];
  }

  Future<User?> getById(int id) async {
    try {
      final record = await _sqfliteService.take(
        SqfliteService.databaseUserTableName,
        where: 'id = ?',
        whereArgs: [id],
      );

      final userMap = record.firstWhere((e) => e['id'] == id);

      return UserDbX.fromDbMap(userMap);
    } catch (e) {
      return null;
    }
  }

  Future<User> createUser(User user) async {
    final record = await _sqfliteService.insert(
      SqfliteService.databaseUserTableName,
      user.toDbMap(),
    );
    return UserDbX.fromDbMap(record);
  }

  Future<User> updateUser(User user) async {
    final record = await _sqfliteService.update(
      databaseTableName: SqfliteService.databaseUserTableName,
      updatedValue: user.toDbMap(),
    );
    return UserDbX.fromDbMap(record);
  }
}
