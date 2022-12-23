import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/main_screen/main_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: MainLayout());
  }
}
