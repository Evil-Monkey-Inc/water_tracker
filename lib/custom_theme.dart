import 'package:flutter/material.dart';

class CustomTheme {
  static const privacyPolicyProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  static const termsProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  static const restText = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.black),
  );

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

  static const privacyPolicyTextProperty = TextStyle(
    fontSize: 16,
    color: Colors.black,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
  );

  static const header = TextStyle(fontSize: 20);

  static const mainColor = Color(0xFF292D32);

  static const mainButtonBackgroundColor = Color(0xFFF1F1F1);

  static const backgroundSexBottomColor = mainButtonBackgroundColor;

  static const backgroundSliderLine = mainButtonBackgroundColor;

  static const sexLabelColor = Colors.white;

  static const cursorColor = TextSelectionThemeData(cursorColor: mainColor);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: mainColor));

  static const skipButtonColor = Color(0xFF1D82F9);

  static const privacyProperty = TextStyle(fontSize: 16, color: mainColor);

  static const skipButtonsStyle = TextStyle(fontSize: 22, color: skipButtonColor);

  static const titleSettingsProperty = TextStyle(fontSize: 34, color: mainColor, fontWeight: FontWeight.bold);

  static const borderFillColor = Color(0xFFA6ABB5);

  static const borderLabelStyle = TextStyle(color: mainColor);

  static const backgroundFieldColor = Color(0xFFF2F4F8);

  static const buttonColor = mainColor;

  static const buttonSize = TextStyle(fontSize: 16);

  static const minimumSizeButton = Size.fromHeight(12);

  static const setupScreenProperty = TextStyle(fontSize: 24, color: mainColor, fontWeight: FontWeight.bold);

  static const greetingsProperty = TextStyle(fontSize: 28, color: mainColor);

  static const themeColor = Color(0xFF8F9AA9);

  static const notHaveAccountProperty = TextStyle(fontSize: 16, color: themeColor);

  static const signUpProperty = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  static const focusColor = mainColor;

  static const themeDataColor = mainColor;

  static const roundingButton = BorderRadius.all(Radius.circular(40));
}
