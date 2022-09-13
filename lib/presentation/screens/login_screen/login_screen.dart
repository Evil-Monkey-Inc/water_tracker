import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const paddingLeft = 20.0;
  static const paddingTop = 30.0;
  static const paddingRight = 20.0;
  static const paddingBottom = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            LogoWidget(),
          ],
        ),
      ),
    );
  }
}
// TODO: Divide screen and screen layout
