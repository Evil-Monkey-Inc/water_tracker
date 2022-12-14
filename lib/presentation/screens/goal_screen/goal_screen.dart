import 'package:flutter/material.dart';
import 'goal_layout.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: GoalLayout());
  }
}
