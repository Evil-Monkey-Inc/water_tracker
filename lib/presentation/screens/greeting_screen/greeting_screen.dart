import 'package:flutter/material.dart';
import 'greeting_layout.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: GreetingLayout());
  }
}
