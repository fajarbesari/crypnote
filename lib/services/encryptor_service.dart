import 'dart:convert';
import '../features/crypnote/domain/entities/encryptbox.dart';
import '../core/exceptions/crypnote_exception.dart';
import 'preferences.dart';
import '../core/locator_service.dart';
import 'package:cryptography/cryptography.dart';

class EncryptorService {
  final _prefs = locator<Preferences>();
  final SecretKeyHelper secretKeyHelper = locator<SecretKeyHelper>();

  late Cipher algorithm;
  late SecretKey secretKey;

  List<int>? modifiedKey;
  set setModifiedKey(List<int> updated) => modifiedKey = updated;

  String get cipherKey => 'CIPHER_KEY';
  String get secretKeyKey => 'SECRET_KEY';

  List<Cipher> get ciphers => CipherX.ciphers;

  Future<List> get() async {
    // read from prefs
    final alsk = await Future.wait([
      _prefs.get(cipherKey),
      _prefs.get(secretKeyKey),
    ]);

    if (alsk.any((e) => e == null || e.isEmpty)) {
      algorithm = AesGcm.with128bits();
      secretKey = await secretKeyHelper.createSecretKey();
      final name = await secretKey.asString;
      Future.wait([
        _prefs.send(cipherKey, algorithm.name),
        _prefs.send(secretKeyKey, name),
      ]);
    }

    final al = CipherX.fromName(alsk.first!);
    final sk = SecretKeyX.fromName(alsk.last!);

    algorithm = al;
    secretKey = sk;

    return [algorithm, secretKey];
  }

  Future<SecretBox?> encrypt(String crypnote) async {
    try {
      // keychanger from secretkey all in one depend on the alorithm
      final sc = await secretKeyHelper.keyChanger(algorithm, secretKey);
      // modified key store to db with the secret box emited
      // temporary store to modified variable
      modifiedKey = await sc.extractBytes();

      final wand = await algorithm.newCipherWandFromSecretKey(sc);
      return await wand.encryptString(crypnote);
    } catch (e) {
      throw CrypnoteException(e.toString());
    }
  }

  Future<String> decrypt(EncryptBox encryptBox) async {
    try {
      // checking cipher
      final al = CipherX.fromName(encryptBox.algorithm);

      final wand = await al.newCipherWandFromSecretKey(
        SecretKey(encryptBox.secretKey),
      );

      final decrypted = await wand.decryptString(
        SecretBox(
          encryptBox.cipherText,
          nonce: encryptBox.nonce,
          mac: Mac(encryptBox.mac),
        ),
      );

      return decrypted;
    } catch (e) {
      throw CrypnoteException(e.toString());
    }
  }
}

class SecretKeyHelper {
  Future<SecretKey> createSecretKey() async {
    return SecretKeyData.random(length: 32);
  }

  Future<SecretKey> keyChanger(Cipher cipher, SecretKey secretKey) async {
    if (cipher == AesGcm.with128bits()) {
      final bytes = await secretKey.extractBytes();
      final bytes16 = bytes.sublist(0, 16);
      return SecretKey(bytes16);
    }
    return secretKey;
  }
}

// ignore: constant_identifier_names
enum CiphersName { AesGcm, Chacha20, Xchacha20 }

extension CipherX on Cipher {
  String get name =>
      toString().split(RegExp(r'[(.]')).first.replaceAll('Dart', '');

  static Cipher fromName(String name) {
    if (name == 'AesGcm') return AesGcm.with128bits();
    if (name == 'Chacha20') return Chacha20.poly1305Aead();
    if (name == 'Xchacha20') return Xchacha20.poly1305Aead();
    throw UnsupportedError('Unknown cipher: $name');
  }

  static List<Cipher> get ciphers => [
    AesGcm.with128bits(),
    Chacha20.poly1305Aead(),
    Xchacha20.poly1305Aead(),
  ];
}

extension SecretKeyX on SecretKey {
  Future<String> get asString async => jsonEncode(await extractBytes());

  static SecretKey fromName(String name) =>
      SecretKey(List<int>.from(jsonDecode(name)));
}

extension SecretKeyDataX on SecretKeyData {
  List<int> get bytes => this.bytes;
  static SecretKey fromBytes(List<int> bytes) =>
      SecretKey(List<int>.from(bytes));
}
