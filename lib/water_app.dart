import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_screen.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({super.key});

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
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
      home: const SignInScreen(),
      builder: (context, widget) => SafeArea(child: widget ?? const SizedBox()),
    );
  }
}
