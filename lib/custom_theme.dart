import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomTheme {


  static const goalCirculars = BorderRadius.all(Radius.circular(16));

  static const fontSizeButton = 16.0;

  static const minimumSizeButton = Size.fromHeight(8);

  static const roundingButton = BorderRadius.all(Radius.circular(40));

  static const backgroundColor = Color(0xFFFAFAFA);



  static const systemTheme = SystemUiOverlayStyle(
    statusBarColor: backgroundColor,
    systemNavigationBarColor: backgroundColor,
    statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  );
}
