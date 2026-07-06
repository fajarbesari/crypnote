import 'package:crypnote/repositories/crypnote_repository.dart';
import '../../../../core/locator_service.dart';
import '../entities/crypnote.dart';
import '../entities/encryptbox.dart';

class EncryptionModel {
  final _crypnoteRepository = locator<CrypnoteRepository>();

  Future<EncryptBox?> encryption(
    Crypnote crypnote,
    DateTime? scheduleAt,
  ) async {
    return await _crypnoteRepository.encryption(crypnote, scheduleAt);
  }

  ImportanceLevel get importanceLevel => ImportanceLevel.levelFour;

  String get selectedItemSchedule => 'selectedSchedule';
}
