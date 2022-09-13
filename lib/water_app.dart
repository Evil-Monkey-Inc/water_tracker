import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/login_screen/login_screen.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({Key? key}) : super(key: key);

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: LoginScreen()),
    );
  }
}
