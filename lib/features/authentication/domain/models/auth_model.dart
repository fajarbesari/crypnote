import 'dart:convert';
import '../../../../core/exceptions/crypnote_exception.dart';
import '../../../../repositories/user_repository.dart';
import '../../../../services/preferences.dart';
import '../../../../core/locator_service.dart';
import '../../../../services/secure_storage.dart';
import '../../../../core/utils/tokenize.dart';
import '../entities/login.dart';
import '../entities/user.dart';
import '../../../../core/usesCase/language_model.dart';

class AuthModel {
  // user key must have differs from vary users
  final String _userSecureKey = 'USER_SECURE_KEY';
  final String _passwordSecureKey = 'PASSWORD_SECURE_KEY';
  final String _tokenSecureKey = 'TOKEN_SECURE_KEY';

  final UserRepository _userRepository = locator<UserRepository>();
  final Preferences _prefs = locator<Preferences>();
  final SecureStorage _secureStorage = locator<SecureStorage>();

  // late User currentUser;

  // fetching for first time app start up
  // implementing restore auth from secure storage, if not logout
  Future<User?> get() async {
    try {
      // read token from prefs
      final tokenPrefs = await _prefs.get(_tokenSecureKey);

      if (tokenPrefs == null) {
        throw CrypnoteException('user might not login yet');
      }
      // read token from secure storage
      final passwordHash = await _secureStorage.read(_passwordSecureKey);
      // validate to secure storage
      if (tokenPrefs != passwordHash) {
        throw CrypnoteException('user token expired');
      }

      // if not fail, fetching user model from secure storage get from repo
      final userSecure = await _secureStorage.query(passwordHash!);

      final user = UserDbX.fromDbMap(userSecure);

      // currentUser = user;

      return user;
    } catch (e) {
      // throw CrypnoteException('could not initialize auth', e);
      return null;
    }
  }

  Future<User?> authentication(Login login) async {
    try {
      // authentication from secure storage with token as key
      await Future.delayed(Duration(seconds: 4));

      // validate to server username exist
      final users = await _userRepository.get();

      final password = await Tokenize.generate(jsonEncode(login));

      // print(password);

      if (users.every((e) => e.login.password != password)) {
        throw CrypnoteException(
          'could not find user with username ${login.username}',
        );
      }

      final user = users.singleWhere(
        (e) =>
            e.login.username == login.username && e.login.password == password,
      );

      // store existing password to prefs for persistance
      _prefs.send(_tokenSecureKey, user.login.password);

      // store token to secure to initialize
      _secureStorage.save(_passwordSecureKey, user.login.password);

      // return authenticated user
      // currentUser = user;
      return user;
    } catch (e) {
      throw CrypnoteException('an error occured', e);
    }
  }

  Future<User> registration(Login login) async {
    try {
      await Future.delayed(Duration(seconds: 4));
      // validate to server username usagle
      // validate to database if the login model doesnt used yet
      final users = await _userRepository.get();

      if (users.any((e) => e.login.username == login.username)) {
        throw CrypnoteException(
          'could not create registration with username ${login.username}',
        );
      }

      // create token for password hashing must be unique
      // final passwordHash = await Tokenize.generate(login.password);
      final passwordHash = await Tokenize.generate(jsonEncode(login));
      // return null mean could create the account aka valid
      // if valid create user model and store it to db

      final hashedlogin = login.copyWith(password: passwordHash);

      final registeredUser = User(
        login: hashedlogin,
        firstname: login.username,
      );

      // store to secure storage for initialize
      // hash password become user key
      final storeUserToken = await _secureStorage.save(
        _passwordSecureKey,
        passwordHash,
      );
      // store user with hash password as key also
      // store user to secure storage and db with token
      final storedUser = await _secureStorage.save(
        passwordHash,
        jsonEncode(registeredUser.toDbMap()),
      );

      if (!storedUser || !storeUserToken) {
        throw CrypnoteException('could not store in secure storage');
      }

      // return created user
      // user must go to login screen
      _userRepository.createUser(registeredUser);
      return registeredUser;
    } catch (e) {
      rethrow;
    }
  }

  // implement logout
  Future<bool> deletation() async {
    try {
      // erase the stored token in the prefs
      final deletedToken = await _prefs.delete(_tokenSecureKey);

      //erase stored user in secure storage
      final deletedUser = await _secureStorage.delete(_userSecureKey);

      // erase stored passsword token in secure
      final deletedPasswordToken = await _secureStorage.delete(
        _passwordSecureKey,
      );

      if (!deletedToken || !deletedUser || !deletedPasswordToken) {
        throw CrypnoteException('could not delete the value');
      }

      // return true if success, returnable to inform the user in the ui
      return true;
    } catch (e) {
      return false;
    }
  }
}
