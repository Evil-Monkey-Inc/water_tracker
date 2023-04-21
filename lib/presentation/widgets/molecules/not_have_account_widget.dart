import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  static const notHaveAccountPadding = EdgeInsets.all(8.0);

  @override
  Widget build(BuildContext context) {
    final spaceTextSpan =
    TextSpan(text: ' ', style: Theme.of(context).textTheme.headline5);
    return Padding(
      padding: notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: LocaleKeys.dont_have_an_account_yet.tr(),
                style: Theme.of(context).textTheme.headline6,
                children: [
                  spaceTextSpan,
                  TextSpan(
                    text: LocaleKeys.sign_up.tr(),
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontSize: 16,
                      color: LightPalette.blackColor,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(SignUpScreen.route),
          ),
        ],
      ),
    );
  }
}
