import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text.rich(
        TextSpan(
          text: 'By signing in, you agree to our ',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Terms',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
              // TODO:  code to open / launch terms of service link here
            ),
            TextSpan(
              text: ' and ',
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Privacy Policy.',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
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
