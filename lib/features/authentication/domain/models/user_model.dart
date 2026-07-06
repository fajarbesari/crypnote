import 'dart:async';
import 'package:crypnote/services/preferences.dart';
import 'package:flutter/material.dart';
import '../../../../core/entities/lang.dart';
import '../../../../core/exceptions/crypnote_exception.dart';
import '../../../../core/utils/logging.dart';
import '../../../../repositories/user_repository.dart';
import '../../../../core/locator_service.dart';
import '../../../../services/secure_storage.dart';
import '../../../../core/utils/tokenize.dart';
import '../entities/pin.dart';
import '../entities/user.dart';
import 'auth_model.dart';
import '../../../../core/usesCase/language_model.dart';

class UserModel {
  final _userRepository = locator<UserRepository>();
  final _secureStorage = locator<SecureStorage>();
  final _language = locator<LanguageModel>();
  final _auth = locator<AuthModel>();
  final _preferences = locator<Preferences>();

  // User get user => _auth.currentUser;

  Future<User?> getById(int id) async {
    return await _userRepository.getById(id);
  }

  final int _usernameLength = 5;
  String? usernameValidator(String? value, String empty, String char) {
    if (value == null || value.isEmpty) {
      return empty;
    } else if (value.length <= _usernameLength) {
      return char;
    }
    return null;
  }

  Future<User> modifyUsername(int id, String username) async {
    try {
      await Future.delayed(Duration(seconds: 4));

      // fetch user by id
      final user = await _userRepository.getById(id);

      // if no return throw an exception
      if (user == null) {
        Logging.messages('user not found when modify');
        throw CrypnoteException('could not find user with id $id');
      }

      // make a copy to the existing data
      final modifiedField = user.login.copyWith(username: username);

      final updatedUser = user.copyWith(login: modifiedField);

      // and return the modify user model
      await _userRepository.updateUser(updatedUser);

      Logging.messages(
        'modify user with id $id field username successful',
        LoggingInfo.SUCCESS,
      );
      return updatedUser;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> modifyName({
    required int id,
    String? firstname,
    String? lastname,
  }) async {
    try {
      await Future.delayed(Duration(seconds: 3));

      // fetch user by id to be modified
      final user = await _userRepository.getById(id);

      if (user == null) {
        Logging.messages('user not found when modify');
        throw CrypnoteException('could not find user with id $id');
      }

      // make a copy to the existing data to be renewal user with updated data
      final modifiedField = user.copyWith(
        firstname: firstname,
        lastname: lastname,
      );

      // store to database
      await _userRepository.updateUser(modifiedField);

      return modifiedField;
    } catch (e) {
      rethrow;
    }
  }

  String? pinValidator(String? pin) {
    if (pin == null || pin.isEmpty) return 'pin could not null or empty';
    if (pin.length != 7) return 'pin required at least 7 characters';
    return null;
  }

  Future<User> createPin(String pin, User user) async {
    try {
      // create pin and with validation must has 7 character
      final isValid = pinValidator(pin);

      // throw exception when not valid
      if (isValid != null) {
        throw CrypnoteException(
          'pin maybe empty and must have exactly 7 character',
        );
      }

      // create token for pin to stored to db and secure
      final tokenPin = await Tokenize.generate(pin);

      // store token pin to secure storage
      await _secureStorage.save(tokenPin, tokenPin);
      // if valid update to current user
      // store to database
      final pinnedUser = user.copyWith(pin: Pin(pin: tokenPin));

      // create unique key token from tokenpin to store plain text
      final key = await Tokenize.generate(tokenPin);

      // store plain pin to secure storage
      await _secureStorage.save(key, pin);

      return await _userRepository.updateUser(pinnedUser);
    } catch (e) {
      rethrow;
    }
  }

  final _profileImageKey = 'PROFILE_IMAGE_KEY';

  List<AssetImage> getProfileImages() => List.generate(
    9,
    (index) => AssetImage('assets/avatars/avatar_${index + 1}.png'),
  );

  Future<AssetImage?> initializeProfile() async {
    final imageString = await _preferences.get(_profileImageKey);

    if (imageString == null) return null;

    return AssetImage(imageString);
  }

  Future<AssetImage> modifiyProfile(AssetImage updatedImage) async {
    final sended = await _preferences.send(
      _profileImageKey,
      updatedImage.assetName,
    );

    print(updatedImage.assetName);

    if (!sended) {
      throw CrypnoteException('Could not send updated avatar');
    }
    return updatedImage;
  }
}
