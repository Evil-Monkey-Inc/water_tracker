import 'package:flutter/material.dart';

class PersonalSettingsLayout extends StatelessWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(padding: paddingHorizontal));
  }
}
