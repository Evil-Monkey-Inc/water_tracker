import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({Key? key}) : super(key: key);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));
  // todo: move to theme
  static const paddingPrivacyPolicyTermsWidget = EdgeInsets.all(16.0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingPrivacyPolicyTermsWidget,
      child: Text.rich(
        TextSpan(
          text: LocaleKeys.by_signing_in_you_agree_to_our.tr(),
          style: CustomTheme.restText,
          children: <TextSpan>[
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.terms.tr(),
              style: CustomTheme.termsProperty,
              recognizer: TapGestureRecognizer()..onTap = () {},
              // TODO:  code to open / launch terms of service link here
            ),
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.and.tr(),
              style: const TextStyle(fontSize: 16, color: Colors.black), // todo: move to theme
            ),
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.privacy_policy.tr(),
              style: CustomTheme.privacyPolicyTextProperty,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // TODO:  code to open / launch terms of service link here
                },
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
