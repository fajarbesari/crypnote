class RegisterModel {
  final int _usernameLength = 5;

  String? usernameValidator(String? value, String empty, String char) {
    if (value == null || value.isEmpty) {
      return empty;
    } else if (value.length <= _usernameLength) {
      return char;
    }
    return null;
  }

  final int _passwordLength = 8;
  String? passwordValidator(String? value, String empty, String char) {
    if (value == null || value.isEmpty) {
      return empty;
    }
    if (value.length <= _passwordLength) {
      return char;
    }
    return null;
  }

  bool obsecurePassword = true;
  bool obsecureModify() => obsecurePassword = !obsecurePassword;
}
