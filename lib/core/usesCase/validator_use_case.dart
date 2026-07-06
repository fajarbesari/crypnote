import 'package:crypnote/features/authentication/domain/entities/user.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/services/secure_storage.dart';
import 'package:crypnote/core/utils/tokenize.dart';
import 'package:crypnote/features/authentication/domain/models/user_model.dart';

class ValidatorUseCase {
  final _secureStorage = locator<SecureStorage>();
  final _user = locator<UserModel>();

  String? pinValidator(String? pin) {
    if (pin == null || pin.isEmpty) return 'pin could not null or empty';
    if (pin.length != 7) return 'pin required at least 7 characters';
    return null;
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
