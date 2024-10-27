class Password {
  String _password;

  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String newPassword) {
    if (_isValidPassword(newPassword)) {
      _password = newPassword;
    } else {
      throw Exception(
          "Use password between 8-16 chars which contains uppercase, lowercase, and numbers.");
    }
  }

  bool isValid() {
    return _isValidPassword(_password);
  }

  bool _isValidPassword(String password) {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasNumber = password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
