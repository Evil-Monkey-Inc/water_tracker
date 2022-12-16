import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/greeting_widget..dart';

class GreetingLayout extends StatelessWidget {
  const GreetingLayout({Key? key}) : super(key: key);

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          children: const [GreetingWidget()],
        ),
      ),
    );
  }
}
