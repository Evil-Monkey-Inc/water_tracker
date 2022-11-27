import 'package:flutter/material.dart';
import 'registration_layout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: RegistrationLayout());
  }
}
