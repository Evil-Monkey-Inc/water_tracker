import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              text: 'Don`t have an account yet?',
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF8F9AA9),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Sing Up',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  // TODO:  code to open / launch terms of service link here
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
