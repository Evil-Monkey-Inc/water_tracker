import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomTheme {
  final privacyPolicyProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    fontFamily: Assets.fonts.senRegular,
  );

  final counterProperty = const TextStyle(
    fontSize: 56,
    color: CustomTheme.mainColor,
    fontWeight: FontWeight.w300,
  );

  final tabFemaleTextProperty = TextStyle(
    fontSize: 16,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  final tabMaleTextProperty = TextStyle(
    fontSize: 16,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  final selectSexButtonProp = TextStyle(
    fontSize: 16,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  final largeText = TextStyle(
    fontSize: 34,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  final termsProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    fontFamily: Assets.fonts.senRegular,
  );

  final restText = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: Assets.fonts.senRegular,
  );

  static const focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.black),
  );

  static const goalCirculars = BorderRadius.all(Radius.circular(16));

  static const focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.red),
  );

  static const unFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  );

  static const disabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.red),
  );

  final privacyPolicyTextProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w500,
    fontFamily: Assets.fonts.senRegular,
  );

  static const decorationColor = Colors.white;

  static const shadowColor = Color(0xFFFAFAFA);

  final header = TextStyle(
    fontSize: 16,
    fontFamily: Assets.fonts.senBold,
  );

  static const notHaveAccountStyle = TextStyle(fontSize: 16, color: mainColor);

  final counterMl = TextStyle(
    fontSize: 18,
    color: mainColor,
    fontFamily: Assets.fonts.senRegular,
  );

  final notificationTextSize = TextStyle(
    fontSize: 24,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  static const sizeOfButton = TextStyle(fontSize: 16);

  final sizeOfDataWidget = TextStyle(
    fontSize: 20,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  final gotCupsTextProperty = TextStyle(
    fontSize: 36,
    color: mainColor,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  static const countTextColor = Color(0xFF7E32CB);

  final countTextProperty = TextStyle(
    fontSize: 36,
    color: countTextColor,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  static const textPurple = Color(0xFFBA68C8);

  final partOfCountTextProperty = TextStyle(
    fontSize: 36,
    color: textPurple,
    fontFamily: Assets.fonts.senRegular,
    fontWeight: FontWeight.w500,
  );

  static const fontSizeButton = 16.0;

  static const mainColor = Color(0xFF292D32);

  static const mainButtonBackgroundColor = Color(0xFFF1F1F1);

  static const backgroundSexBottomColor = mainButtonBackgroundColor;

  static const backgroundSliderLine = mainButtonBackgroundColor;

  static const sexLabelColor = Colors.white;

  static const cursorColor = TextSelectionThemeData(cursorColor: mainColor);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: mainColor));

  static const skipButtonColor = Color(0xFF1D82F9);

  final privacyProperty = TextStyle(
    fontSize: 16,
    color: mainColor,
    fontFamily: Assets.fonts.senRegular,
  );

  final skipButtonsStyle = TextStyle(
    fontSize: 16,
    color: skipButtonColor,
    fontFamily: Assets.fonts.senRegular,
  );

  final titleSettingsProperty = TextStyle(
    fontSize: 34,
    color: mainColor,
    fontWeight: FontWeight.w500,
    fontFamily: Assets.fonts.senBold,
  );

  static const borderFillColor = Color(0xFFA6ABB5);

  static const labelTextColor = Color(0xFFA6ABB5);

  static const borderLabelStyle = TextStyle(color: labelTextColor);

  static const backgroundFieldColor = Color(0xFFF2F4F8);

  static const buttonDarkColor = mainColor;

  static const buttonSize = TextStyle(fontSize: 16);

  static const buttonLightColor = Color(0xFFF1F1F1);

  static const minimumSizeButton = Size.fromHeight(8);

  final setupScreenProperty = TextStyle(
    fontSize: 20,
    color: mainColor,
    fontFamily: Assets.fonts.senBold,
  );

  final greetingsProperty = TextStyle(
    fontSize: 24,
    color: CustomTheme.mainColor,
    fontWeight: FontWeight.w500,
    fontFamily: Assets.fonts.senBold,
  );

  static const themeColor = Color(0xFF8F9AA9);

  final notHaveAccountProperty = TextStyle(
    fontSize: 16,
    color: themeColor,
    fontFamily: Assets.fonts.senRegular,
  );

  static const signUpProperty = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  static const notHaveAccount = TextStyle(fontSize: 16, color: Colors.black);

  static const focusColor = mainColor;

  static const themeDataColor = mainColor;

  static const roundingButton = BorderRadius.all(Radius.circular(40));
}
