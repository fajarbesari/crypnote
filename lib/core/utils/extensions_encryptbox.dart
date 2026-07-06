import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:uuid/uuid.dart';

extension EncryptBoxX on EncryptBox {
  String get toUuid => Uuid.unparse(mac).replaceAll('-', '').substring(1, 26);
}
