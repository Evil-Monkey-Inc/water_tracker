import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

typedef SingleValidatorFunction = String? Function(String?);
typedef DoubleValidatorFunction = String? Function(String?, String?);

class FormValidators {
  static final _emailRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
  static final _passwordRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{8,}$');

  static SingleValidatorFunction emailValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.enter_your_email.tr();
    if (!_emailRegexp.hasMatch(value)) return LocaleKeys.please_enter_correct_email.tr();
    return null;
  };

  static SingleValidatorFunction passwordValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.please_enter_password.tr();
    if (!_passwordRegexp.hasMatch(value)) {
      return LocaleKeys.invalid_password.tr();
    } else {
      return null;
    }
  };

  static DoubleValidatorFunction repeatPasswordValidator = (value1, value2) {
    if (value1 == null || value1.isEmpty) return LocaleKeys.please_enter_password.tr();
    return value1 == value2 ? null : "Passwords do not match";
  };
}
