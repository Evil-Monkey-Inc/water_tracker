import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({Key? key}) : super(key: key);

  static const privacyPolicyText = 'By signing in, you agree to our ';
  static const terms = 'Terms';
  static const and = '\tand\t';
  static const privacyPolicy = 'Privacy Policy.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomTheme.paddingPrivacyPolicyTermsWidget,
      child: Text.rich(
        TextSpan(
          text: privacyPolicyText,
          style: CustomTheme.privacyPolicyTextProperty,
          children: <TextSpan>[
            TextSpan(
              text: terms,
              style: CustomTheme.termsProperty,
              recognizer: TapGestureRecognizer()..onTap = () {},
              // TODO:  code to open / launch terms of service link here
            ),
            TextSpan(
              text: and,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: <TextSpan>[
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
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
