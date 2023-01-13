import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/screens/main_screen/main_screen.dart';
import 'package:water_tracker/presentation/screens/notification_screen/notification_screen.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/porsonal_settings_screen.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_screen.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({super.key});

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  static const signInScreenPath = 'SignInScreen';
  static const signUpScreenPath = 'SignUpScreen';
  static const personalSettingScreenPath = 'PersonalSettingScreen';
  static const notificationScreenPath = 'NotificationScreen';
  static const greetingScreenPath = 'GreetingScreen';
  static const mainScreenPath = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: ThemeData(
        primaryColor: CustomTheme.themeDataColor,
        focusColor: CustomTheme.focusColor,
        inputDecorationTheme: CustomTheme.inputDecorationTheme,
        textSelectionTheme: CustomTheme.cursorColor,
      ),
      initialRoute: signInScreenPath,
      routes: {
        signInScreenPath : (context) =>  const SignInScreen(),
        signUpScreenPath : (context) => const SignUpScreen(),
        personalSettingScreenPath : (context) =>   const PersonalSettingScreen(),
        notificationScreenPath : (context) =>  const NotificationScreen(),
        greetingScreenPath : (context) =>  const GreetingScreen(),
        mainScreenPath : (context) =>  const MainScreen(),
      },
      home: const SignInScreen(),
      builder: (context, widget) => SafeArea(child: widget ?? const SizedBox()),
    );
  }
}
