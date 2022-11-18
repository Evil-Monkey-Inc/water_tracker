import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/login_screen/login_screen.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({Key? key}) : super(key: key);

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
  final focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(),
  );

  final focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(color: Colors.red),
  );

  final unFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide.none,
  );

  final disabledBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none);

  final errorBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: ThemeData(
        primaryColor: const Color(0xFF292D32),
        focusColor: const Color(0xFF292D32),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: focusedBorder,
          focusedErrorBorder: focusedErrorBorder,
          enabledBorder: unFocusedBorder,
          disabledBorder: disabledBorder,
          border: focusedBorder,
          errorBorder: errorBorder,
          filled: true,
          fillColor: const Color(0xFFA6ABB5),
          labelStyle: const TextStyle(
            color: Color(0xFF292D32),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFF292D32),
        ),
      ),
      home: const SafeArea(child: LoginScreen()),
    );
  }
}
