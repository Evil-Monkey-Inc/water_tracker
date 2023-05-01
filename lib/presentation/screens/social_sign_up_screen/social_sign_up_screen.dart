import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/social_sign_up_layout.dart';

class SocialSignUpScreen extends StatelessWidget {
  const SocialSignUpScreen({super.key});

  static const route = 'auth_screen';


  @override
  Widget build(BuildContext context) {
    return const SocialSignUpLayout();
  }
}
