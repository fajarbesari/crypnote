import 'dart:math';

class CodecryptHelper {
  static int generate(int length) {
    final rnd = Random();
    return rnd.nextInt(999) + 100;
  }
}
