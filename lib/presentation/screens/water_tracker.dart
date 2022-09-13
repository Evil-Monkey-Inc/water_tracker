import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/main_screen.dart';

class WaterTracker extends StatelessWidget {
  const WaterTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MainScreen());
  }
}
