// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "enter_your_email": "Enter your email",
  "enter_password": "Enter password",
  "sing_in": "Увійти",
  "welcome_back_tony": "Welcome back, Tony"
};
static const Map<String,dynamic> uk = {
  "enter_your_email": "Вкажіть вашу пошту",
  "enter_password": "Вкажіть пароль",
  "sing_in": "Увійти",
  "welcome_back_tony": "Ласкаво просимо, Тоні"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "uk": uk};
}
