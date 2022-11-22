import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/screens/login_screen/registration_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({Key? key}) : super(key: key);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));
  static const notHaveAccountPadding = EdgeInsets.all(8.0);
  static const notHaveAccount = 'Don`t have an account yet?';
  static const singUp = '\nSing Up';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: const Text.rich(
              TextSpan(
                text: notHaveAccount,
                style: CustomTheme.notHaveAccountProperty,
                children: [
                  spaceTextSpan,
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
