import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  static const spaceTextSpan = TextSpan(text: ' ', style: CustomTheme.textSpanStyle);
  static const notHaveAccountPadding = EdgeInsets.all(8.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: LocaleKeys.dont_have_an_account_yet.tr(),
                style: CustomTheme().notHaveAccountProperty,
                children: [
                  spaceTextSpan,
                  TextSpan(
                    text: LocaleKeys.sign_up.tr(),
                    style: CustomTheme.signUpProperty,
                  ),
                ],
              ),
            ),
            onTap: () =>  Navigator.of(context).pushNamed(SignUpScreen.route),
          ),
        ],
      ),
    );
  }
}
