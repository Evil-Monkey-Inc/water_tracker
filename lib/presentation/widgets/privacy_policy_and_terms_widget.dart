import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({Key? key}) : super(key: key);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));
  // todo: move to theme
  static const privacyPolicyText = 'By signing in, you agree to our';
  static const terms = 'Terms';
  static const and = 'and';
  static const privacyPolicy = 'Privacy Policy.';
  static const paddingPrivacyPolicyTermsWidget = EdgeInsets.all(16.0);
  // Todo: refactored widget and add to localization
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingPrivacyPolicyTermsWidget,
      child: Text.rich(
        TextSpan(
          text: privacyPolicyText,
          style: CustomTheme.restText,
          children: <TextSpan>[
            spaceTextSpan,
            TextSpan(
              text: terms,
              style: CustomTheme.termsProperty,
              recognizer: TapGestureRecognizer()..onTap = () {},
              // TODO:  code to open / launch terms of service link here
            ),
            spaceTextSpan,
            const TextSpan(
              text: and,
              style: TextStyle(fontSize: 16, color: Colors.black), // todo: move to theme
            ),
            spaceTextSpan,
            TextSpan(
              text: privacyPolicy,
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
