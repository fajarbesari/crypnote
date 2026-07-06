import 'package:crypnote/repositories/crypnote_repository.dart';
import 'package:crypnote/repositories/encryptbox_repository.dart';
import '../../../authentication/domain/entities/user.dart';
import '../../../../services/secure_storage.dart';
import '../../../../core/utils/tokenize.dart';
import '../../../../core/locator_service.dart';
import '../entities/crypnote.dart';
import '../entities/encryptbox.dart';
import '../../../authentication/domain/models/user_model.dart';

class DecryptionModel {
  // final _lang = locator<LanguageModel>();
  final _secureStorage = locator<SecureStorage>();
  final _encryptBoxRepository = locator<EncryptBoxRepository>();
  final _crypnoteRepository = locator<CrypnoteRepository>();
  final _user = locator<UserModel>();

  // User get user => _user.user;

  Future<Crypnote> decryptById(int encryptBoxId) async {
    return _encryptBoxRepository.decryptById(encryptBoxId);
  }

  Future<EncryptBox> takeEncryptBoxId(int id) async {
    return await _encryptBoxRepository.getById(id);
  }

  Future<EncryptBox> updatedLatestDecryption(
    int encryptBoxId,
    EncryptBox updatedEncryptBox,
  ) async {
    return _encryptBoxRepository.updateById(encryptBoxId, updatedEncryptBox);
  }

  Future<EncryptBox> updatedCompletation(
    int encryptBoxId,
    Crypnote updatedCrypnote,
  ) async {
    return _crypnoteRepository.updateById(encryptBoxId, updatedCrypnote);
  }

  Future<bool> pinValidation(String? pin, User user) async {
    // fetch current user pin
    final pinPersist = user.pin?.pin;

    if (pinPersist == null || pinPersist.isEmpty) {
      return false;
    }

    // read token pin from secure storage
    final pinToken = await _secureStorage.read(pinPersist);

    if (pinToken == null || pinToken.isEmpty || pinPersist != pinToken) {
      return false;
    }

    if (pin == null || pin.isEmpty) {
      return false;
    }
    final key = await Tokenize.generate(pinToken);

    final pinPlain = await _secureStorage.read(key);

    // compare with user input
    if (pinPlain != pin) {
      return false;
    }

    return true;
  }
}
