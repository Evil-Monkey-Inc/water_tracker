import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/greeting_widget..dart';

class GreetingLayout extends StatelessWidget {
  const GreetingLayout({Key? key}) : super(key: key);

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Center(
          child: Center(
            child: Column(
              children: [
                const GreetingWidget(),
                Expanded(
                  child: CustomButton(
                    buttonColor: CustomTheme.buttonDarkColor,
                    textButtonColor: CustomTheme.decorationColor,
                    onPressed: () {},
                    text: 'Get started',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
