import 'dart:async';

import 'package:cryptography/cryptography.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../services/encryptor_service.dart';
import '../../../core/locator_service.dart';
import '../domain/models/cipher_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_cipher_controller.g.dart';
part 'current_cipher_controller.freezed.dart';

@freezed
sealed class CipherState with _$CipherState {
  const factory CipherState({
    Cipher? cipher,
    SecretKey? secretKey,
    bool? isLoading,
    String? error,
  }) = _CipherState;
}

@riverpod
class CurrentCipherController extends _$CurrentCipherController {
  final _cipherModel = locator<CipherModel>();
  final _encryptor = locator<EncryptorService>();

  @override
  CipherState build() {
    unawaited(initialize());
    return CipherState();
  }

  List<String> get ciphers => _cipherModel.names;

  Future<void> initialize() async {
    try {
      final cipher = await _encryptor.get();
      state = state.copyWith(cipher: cipher.first, secretKey: cipher.last);
    } catch (e, s) {
      state = state.copyWith(error: s.toString());
    }
  }

  Future<void> changeCipher(String cipher) async {
    try {
      final algorithm = await _cipherModel.changeAlgorithm(cipher);
      state = state.copyWith(cipher: algorithm);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> generateSecretKey() async {
    state = state.copyWith(isLoading: true);

    final sk = await _cipherModel.genererateSecretKey();

    state = state.copyWith(secretKey: sk, isLoading: false);
  }
}
