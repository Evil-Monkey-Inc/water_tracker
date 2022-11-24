import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localized_rich_text/localized_rich_text.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/login_screen/registration_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({Key? key}) : super(key: key);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));
  static const notHaveAccountPadding = EdgeInsets.all(8.0);
  static const notHaveAccount = LocaleKeys.dont_have_an_account_yet;
  static const singUp = LocaleKeys.sing_in;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: Text.rich(
              TextSpan(
                text: notHaveAccount.tr(),
                style: CustomTheme.notHaveAccountProperty,
                children: [
                  spaceTextSpan,
                  TextSpan(
                    text: singUp.tr(), // TODO: refactored
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

//TextSpan(
//                 text: LocaleKeys.dont_have_an_account_yet.tr(),
//                 style: CustomTheme.notHaveAccountProperty,
//                 children: [
//                   spaceTextSpan,
//                   TextSpan(
//                     text: LocaleKeys.sing_in.tr(), // TODO: refactored
//                     style: CustomTheme.singUpProperty,
//                   ),
//                 ],
//               ),
