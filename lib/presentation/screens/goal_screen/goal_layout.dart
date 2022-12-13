import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';

class GoalLayout extends StatelessWidget {
  const GoalLayout({Key? key}) : super(key: key);

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: NameAndSkipWidget(
          onPressed: () {},
        ),
      ),
    );
  }
}
