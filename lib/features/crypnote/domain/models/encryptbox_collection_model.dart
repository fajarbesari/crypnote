import '../entities/encryptbox.dart';
import '../../../../repositories/encryptbox_repository.dart';
import '../../../../core/locator_service.dart';
import '../../../../core/usesCase/language_model.dart';

class EncryptBoxCollectionModel {
  final lang = locator<LanguageModel>();
  final _encryptBoxRepository = locator<EncryptBoxRepository>();

  Future<List<EncryptBox>> get(int userId) async {
    final records = await _encryptBoxRepository.get(userId);

    final unSchedules = records.where((e) => e.scheduleAt == null).toList();

    return unSchedules;
  }

  Future<List<EncryptBox>> recycle(int userId) async {
    return _encryptBoxRepository.recycle(userId);
  }

  Future<int> destroyById(int id) async {
    return await _encryptBoxRepository.destroyById(id);
  }

  Future<EncryptBox?> deleteById(int id) async {
    return await _encryptBoxRepository.deleteById(id);
  }

  Future<EncryptBox?> restoreById(int id) async {
    return await _encryptBoxRepository.restoreById(id);
  }
}
