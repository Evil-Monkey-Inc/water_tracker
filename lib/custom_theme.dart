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

  static const cursorColor = TextSelectionThemeData(cursorColor: Color(0xFF292D32));

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));

  static const privacyProperty = TextStyle(fontSize: 16, color: Colors.black);

  static const borderFillColor = Color(0xFFA6ABB5);

  static const borderLabelStyle = TextStyle(color: Color(0xFF292D32));

  static const backgroundFieldColor = Color(0xFFF2F4F8);

  static const buttonColor = Color(0xFF292D32);

  static const buttonSize = TextStyle(fontSize: 16);

  static const minimumSizeButton = Size.fromHeight(12);

  static const greetingsProperty = TextStyle(fontSize: 28, color: Color(0xFF292D32));

  static const logoWidth = 16.0;

  static const logoTextWidth = 87.5;

  static const textSize = 20.0;

  static const notHaveAccountProperty = TextStyle(fontSize: 16, color: Color(0xFF8F9AA9));

  static const singUpProperty = TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

  static const focusColor = Color(0xFF292D32);

  static const themeDataColor = Color(0xFF292D32);

  static const roundingButton = BorderRadius.all(Radius.circular(40));
}
