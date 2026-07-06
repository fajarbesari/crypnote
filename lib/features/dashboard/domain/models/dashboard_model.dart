import 'package:crypnote/features/crypnote/domain/entities/crypnote.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/repositories/crypnote_repository.dart';
import 'package:crypnote/repositories/encryptbox_repository.dart';
import '../../../../core/locator_service.dart';

class DashboardModel {
  final crypnotesRepository = locator<CrypnoteRepository>();
  final _encryptBoxRepository = locator<EncryptBoxRepository>();

  Future<int> total(int userId) async {
    final encryptBoxes = await _encryptBoxRepository.get(userId);

    return encryptBoxes.length;
  }

  Future<int> waiting(int userId) async {
    final encryptBoxes = await _encryptBoxRepository.get(userId);

    return encryptBoxes
        .where(
          (e) => e.scheduleAt != null && e.scheduleAt!.isAfter(DateTime.now()),
        )
        .toList()
        .length;
  }

  Future<int> deleted(int userId) async {
    final encryptBoxes = await _encryptBoxRepository.recycle(userId);

    return encryptBoxes.length;
  }

  Future<int> importance(int userId) async {
    final crypnotes = await crypnotesRepository.getById(userId);

    return crypnotes
        .where((e) => e.importanceLevel == ImportanceLevel.levelOne)
        .toList()
        .length;
  }

  Future<EncryptBox?> latest(int userId) async {
    try {
      final encryptBoxes = await _encryptBoxRepository.get(userId);

      return encryptBoxes.lastWhere((e) => e.latestDecryptionAt != null);
    } catch (e) {
      return null;
    }
  }
}
