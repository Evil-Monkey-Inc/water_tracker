import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_layout.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  static const navigationPath = 'MainScreenGreetingPath';

  @override
  Widget build(BuildContext context) {
    return const GreetingLayout();
  }
}
