import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';


class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  static const notHaveAccountPadding = EdgeInsets.all(8.0);
  static const navigationPath = 'SignInScreen';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: notHaveAccountPadding,
      child: InkWell(
        child: Text.rich(
          TextSpan(
            text: LocaleKeys.already_have_an_account.tr(),
            style: CustomTheme().notHaveAccountProperty,
            children: [
              CustomTheme.spaceTextSpan,
              TextSpan(
                text: LocaleKeys.sign_in.tr(),
                style: CustomTheme.signUpProperty,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () => Navigator.pushNamed(context, navigationPath),
      ),
    );
  }
}
