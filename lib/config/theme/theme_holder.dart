import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/dark_palette.dart';
import 'package:water_tracker/config/theme/theme_palette/default_palette.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

abstract class VendorTheme {
  ThemeData get lightTheme;

  ThemeData get darkTheme;
}

class VenomTheme implements VendorTheme {
  @override
  ThemeData get lightTheme {
    return ThemeData(
      shadowColor: LightPalette.shadowColor,
      primarySwatch: LightPalette.kToDark,
      backgroundColor: LightPalette.backgroundColor,
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: LightPalette.primaryColor,
      dividerColor: LightPalette.greyFillColor,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      toggleableActiveColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.deepPurpleAccent,
      primaryColorDark: LightPalette.blackColor,
      primaryColorLight: LightPalette.whiteColor,
      hoverColor: LightPalette.purpleColor,
      highlightColor: LightPalette.purpleTextColor,
      cardColor: LightPalette.blueColor,
      splashColor: LightPalette.greyBlueColor,
      appBarTheme: const AppBarTheme(
        shadowColor: LightPalette.shadowColor,
        color: LightPalette.primaryColor,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          color: LightPalette.textFieldColor,
        ),
        fillColor: LightPalette.greyFillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: LightPalette.blackColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: LightPalette.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: LightPalette.red),
        ),
      ),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: LightPalette.blueColor,
          fontFamily: Assets.fonts.senRegular,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        headline2: TextStyle(
          fontSize: 16,
          color: LightPalette.blackColor,
          fontFamily: Assets.fonts.senRegular,
        ),
        headline3: TextStyle(
          fontSize: 16,
          fontFamily: Assets.fonts.senBold,
        ),
        headline4: const TextStyle(fontSize: 20),
        headline5:
            const TextStyle(fontSize: 16, color: LightPalette.blackColor),
        headline6: TextStyle(
          color: LightPalette.greyBlueColor,
          fontSize: 16,
          fontFamily: Assets.fonts.senRegular,
        ),
        subtitle1: const TextStyle(
          fontSize: 16,
          color: LightPalette.blackColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle2: TextStyle(
          fontSize: 16,
          color: LightPalette.blackColor,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontFamily: Assets.fonts.senRegular,
        ),
        bodyText1: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamily: Assets.fonts.senBold,
          color: LightPalette.primaryColor,
        ),
        bodyText2: TextStyle(
          fontSize: 18,
          color: LightPalette.blackColor,
          fontFamily: Assets.fonts.senRegular,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(
          fontSize: 18,
          color: LightPalette.primaryColor,
          fontFamily: Assets.fonts.senRegular,
        ),
        caption: TextStyle(
          fontSize: 12,
          color: LightPalette.primaryColor,
          fontFamily: Assets.fonts.senRegular,
          fontWeight: FontWeight.w500,
        ),
        overline: TextStyle(
          fontSize: 36,
          color: LightPalette.purpleColor,
          fontFamily: Assets.fonts.senRegular,
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
        ),
      ),
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
      appBarTheme: const AppBarTheme(
        shadowColor: DarkPalette.greenColor,
        color: DarkPalette.greenColor,
      ),
      iconTheme: const IconThemeData(color: DarkPalette.greenColor),
      inputDecorationTheme: const InputDecorationTheme(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DarkPalette.greenColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DarkPalette.greenColor, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DarkPalette.greenColor, width: 2.0),
        ),
      ),
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
        ),
      ),
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
