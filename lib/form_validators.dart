import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

typedef DoubleValidatorFunction = String? Function(String?, String?);
typedef SingleRegistrationValidatorFunction = String? Function(String?);

class FormValidators {
  static final _emailRegexp = RegExp(r'^([\w-]\.)+@([\w-]+\.)+[\w]{2,4}');
  static final _passwordRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{8,}$');
  static final _nameRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{3,16}$');

  static SingleRegistrationValidatorFunction emailValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.enter_your_email.tr();
    if (!_emailRegexp.hasMatch(value)) {
      return LocaleKeys.please_enter_correct_email.tr();
    }
    return null;
  };

  static SingleRegistrationValidatorFunction passwordValidator = (value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.please_enter_password.tr();
    }
    if (!_passwordRegexp.hasMatch(value)) {
      return LocaleKeys.invalid_password.tr();
    }

    return null;
  };

  static SingleRegistrationValidatorFunction nameValidator = (value) {
    if (value == null || value.isEmpty) return LocaleKeys.enter_your_name.tr();
    if (!_nameRegexp.hasMatch(value)) {
      return LocaleKeys.name_must_contain_one_uppercase_letter.tr();
    }
    if (value.length < 3) {
      return LocaleKeys.please_enter_correct_name.tr();
    }
    return null;
  };

  static SingleRegistrationValidatorFunction passwordRegValidator = (value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.please_enter_password.tr();
    }
    if (value.length < 8) {
      return LocaleKeys.password_must_contain_at_least_8_characters.tr();
    }
    if (!_passwordRegexp.hasMatch(value)) {
      return LocaleKeys.password_must_contain_one_uppercase_letter;
    }
    return null;
  };

  static DoubleValidatorFunction repeatPasswordValidator = (value1, value2) {
    if (value1 == null || value1.isEmpty) {
      return LocaleKeys.please_enter_password.tr();
    }
    return value1 == value2 ? null : LocaleKeys.re_enter_your_password.tr();
  };
}
