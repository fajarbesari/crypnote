import '../../../../services/encryptor_service.dart';
import '../../../../services/preferences.dart';
import '../../../../core/locator_service.dart';
import 'package:cryptography/cryptography.dart';

class CipherModel {
  final _encryptorService = locator<EncryptorService>();
  final _prefs = locator<Preferences>();

  String get cipherKey => _encryptorService.cipherKey;
  String get secretKeyKey => _encryptorService.secretKeyKey;

  List<String> get names =>
      _encryptorService.ciphers.map((e) => e.name).toList();

  Cipher get algorithm => _encryptorService.algorithm;

  SecretKey? get secretKey => _encryptorService.secretKey;

  Future<Cipher> changeAlgorithm(String name) async {
    final algorithm = CipherX.fromName(name);
    // updating the cipher
    _encryptorService.algorithm = algorithm;
    // store to persistance
    _prefs.send(cipherKey, name);

    return algorithm;
  }

  Future<SecretKey> genererateSecretKey() async {
    final updateScretKey = await _encryptorService.secretKeyHelper
        .createSecretKey();
    final name = await updateScretKey.asString;
    _prefs.send(secretKeyKey, name);
    _encryptorService.secretKey = updateScretKey;
    return updateScretKey;
  }
}
