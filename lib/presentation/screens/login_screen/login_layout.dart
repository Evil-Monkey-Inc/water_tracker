import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/login_button_widget.dart';
import 'package:water_tracker/presentation/widgets/logo_form.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/man_widget.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({Key? key}) : super(key: key);

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SizedBox(height: 20),
              ManWidget(),
              LogoForm(),
            ],
          ),
        ),
      ),
    );
  }
}
