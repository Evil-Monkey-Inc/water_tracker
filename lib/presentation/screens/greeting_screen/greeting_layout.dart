import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/greeting_screen/greeting_screen.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/greeting_widget.dart';

class GreetingLayout extends StatelessWidget {
  const GreetingLayout({super.key});

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);
  static const spaces = SizedBox(height: 24);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          children: [
            const Spacer(),
            const GreetingWidget(),
            const Spacer(),
            CustomButton(
              buttonColor: CustomTheme.buttonDarkColor,
              textButtonColor: CustomTheme.decorationColor,
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(GreetingScreen.navigationPath, (Route<dynamic> route) => false);
              },
              text: LocaleKeys.get_started.tr(),
            ),
            spaces,
          ],
        ),
      ),
    );
  }
}
