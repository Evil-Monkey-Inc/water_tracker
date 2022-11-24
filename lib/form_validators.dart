import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

typedef ValidatorFunction = String? Function(String?);

class FormValidators {
  static final _emailRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
  static final _passwordRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');

  static ValidatorFunction emailValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.enter_your_email.tr();
    if (!_emailRegexp.hasMatch(value)) return LocaleKeys.please_enter_correct_email.tr();
    return null;
  };

  static ValidatorFunction passwordValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.please_enter_password.tr();
    if (!_passwordRegexp.hasMatch(value)) {
      return LocaleKeys.invalid_password;
    } else {
      return null;
    }
  };
}
