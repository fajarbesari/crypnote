import 'package:cryptography/cryptography.dart';

class Tokenize {
  static Future<String> generate(String password) async {
    final algorithm = Cryptography.instance.argon2id(
      memory: 19,
      parallelism: 1,
      iterations: 2,
      hashLength: 20,
    );

    final nonce = List<int>.generate(10, (a) => a * 3 + 64);

    final secretKey = await algorithm.deriveKeyFromPassword(
      password: password,
      nonce: nonce,
    );

    final bytes = await secretKey.extractBytes();

    return bytes
        .map((e) => e.toRadixString(16))
        .toString()
        .replaceAll(RegExp(r'[(),\s]'), '');
  }
}
