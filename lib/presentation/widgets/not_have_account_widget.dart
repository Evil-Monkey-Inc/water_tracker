import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/login_screen/registration_screen.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          InkWell(
            child: const Text.rich(
              TextSpan(
                text: 'Don`t have an account yet?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8F9AA9),
                ),
                children: [
                  TextSpan(
                    text: 'Sing Up', // TODO: refactored
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
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
