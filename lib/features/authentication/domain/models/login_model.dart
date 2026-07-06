import '../../../../core/entities/lang.dart';

class LoginModel {
  Lang? _lang;
  Lang? get lang => _lang;

  bool obsecurePassword = true;
  bool obsecureModify() => obsecurePassword = !obsecurePassword;
}
