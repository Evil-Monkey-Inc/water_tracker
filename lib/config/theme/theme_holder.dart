import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/dark_palette.dart';
import 'package:water_tracker/config/theme/theme_palette/default_palette.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';

abstract class VendorTheme {
  ThemeData get lightTheme;

  ThemeData get darkTheme;
}

class VenomTheme implements VendorTheme {
  @override
  ThemeData get lightTheme {
    return ThemeData(
      shadowColor: LightPalette.shadowColor,
      primarySwatch: DefaultPalette.kToDark,
      backgroundColor: DefaultPalette.deepPurpleAccent,
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: DefaultPalette.deepPurpleAccent,
      dividerColor: DefaultPalette.deepPurpleAccent,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      toggleableActiveColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.greenAccent,
      appBarTheme: const AppBarTheme(
        shadowColor: DefaultPalette.deepPurpleAccent,
        color: DefaultPalette.deepPurpleAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme:  TextTheme(
        headline1: TextStyle(
          color: LightPalette.mainColor,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        headline2: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headline4: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headline5: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyText1: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        caption: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'),
    );
  }

  @override
  ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: DefaultPalette.kToDark,
      backgroundColor: DefaultPalette.deepPurpleAccent,
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: DefaultPalette.deepPurpleAccent,
      dividerColor: DefaultPalette.deepPurpleAccent,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      toggleableActiveColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.deepPurpleAccent,
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.deepPurpleAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 96,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headline4: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headline5: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyText1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        caption: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'), // Todo: check generation assets
    );
  }
}

class CarnageTheme implements VendorTheme {
  @override
  ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: DarkPalette.kToDark,
      backgroundColor: DarkPalette.greenColor,
      disabledColor: DarkPalette.greenColor,
      primaryColor: DarkPalette.greenColor,
      dividerColor: DarkPalette.greenColor,
      unselectedWidgetColor: DarkPalette.greenColor,
      toggleableActiveColor: DarkPalette.greenColor,
      hintColor: DarkPalette.greenColor,
      appBarTheme:  AppBarTheme(
        shadowColor: DarkPalette.greenColor,
        color: DarkPalette.greenColor,
      ),
      iconTheme: const IconThemeData(color: DarkPalette.greenColor),
      inputDecorationTheme: const InputDecorationTheme(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DarkPalette.greenColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DarkPalette.greenColor, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DarkPalette.greenColor, width: 2.0),
          )),
      errorColor: DarkPalette.greenColor,
      scaffoldBackgroundColor: DarkPalette.greenColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DarkPalette.greenColor,
        elevation: 8.0,
        selectedItemColor: DarkPalette.greenColor,
        unselectedItemColor: DarkPalette.greenColor,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: DarkPalette.greenColor,
          fontWeight: FontWeight.w400,
          fontSize: 96,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          color: DarkPalette.greenColor,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          color: DarkPalette.greenColor,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headline4: TextStyle(
          color: DarkPalette.greenColor,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headline5: TextStyle(
          color: DarkPalette.greenColor,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          color: DarkPalette.greenColor,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyText1: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        caption: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          color: DefaultPalette.deepPurpleAccent,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'),
    );
  }

  @override
  ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: DefaultPalette.kToDark,
      backgroundColor: DefaultPalette.deepPurpleAccent,
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: DefaultPalette.deepPurpleAccent,
      dividerColor: DefaultPalette.deepPurpleAccent,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      toggleableActiveColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.deepPurpleAccent,
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.deepPurpleAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 96,
          letterSpacing: -1.5,
        ),
        headline2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        headline3: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headline4: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headline5: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        subtitle2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyText1: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyText2: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        caption: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        overline: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'), // Todo: check generation assets
    );
  }
}