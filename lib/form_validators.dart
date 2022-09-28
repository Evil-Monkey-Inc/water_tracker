typedef ValidatorFunction = String? Function(String?);

class FormValidators {
  static final _emailRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
  static final _passwordRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');

  static ValidatorFunction emailValidator = (value) {
    if (value == null || value.isEmpty) return 'Please, enter email';
    if (!_emailRegexp.hasMatch(value)) return 'Please, enter correct email';
    return null;
  };

  static ValidatorFunction passwordValidator = (value) {
    if (value == null || value.isEmpty) return 'Please, enter password';
    if (!_passwordRegexp.hasMatch(value)) {
      return 'Invalid password';
    } else {
      return null;
    }
  };
}
