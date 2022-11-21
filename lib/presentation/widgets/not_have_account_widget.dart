import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/screens/login_screen/registration_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({Key? key}) : super(key: key);

  static const notHaveAccount = 'Don`t have an account yet?';
  static const singUp = '\nSing Up';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomTheme.notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: const Text.rich(
              TextSpan(
                text: notHaveAccount,
                style: CustomTheme.notHaveAccountProperty,
                children: [
                  TextSpan(
                    text: singUp, // TODO: refactored
                    style: CustomTheme.singUpProperty,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegistrationScreen())),
          ),
        ],
      ),
    );
  }
}
