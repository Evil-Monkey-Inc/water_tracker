import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/sign_in_screen/sign_in_screen.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  static const notHaveAccountPadding = EdgeInsets.all(8.0);

  @override
  Widget build(BuildContext context) {
    final spaceTextSpan = TextSpan(
      text: ' ',
      style: TextStyle(
        fontSize: 16,
        color: Theme.of(context).primaryColor,
      ),
    );
    return Padding(
      padding: notHaveAccountPadding,
      child: GestureDetector(
        child: Text.rich(
          TextSpan(
            text: LocaleKeys.already_have_an_account.tr(),
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: LightPalette.greyBlueColor,
              fontFamily: Assets.fonts.senRegular,
            ),
            children: [
              spaceTextSpan,
              TextSpan(
                text: LocaleKeys.sign_in.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () =>
            Navigator.of(context).pushReplacementNamed(SignInScreen.route),
      ),
    );
  }
}
