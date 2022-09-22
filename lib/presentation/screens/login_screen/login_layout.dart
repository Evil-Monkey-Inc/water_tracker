import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/logo_form.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/man_widget.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({Key? key}) : super(key: key);

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  static const paddingHorizontal = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(height: 32),
              LogoWidget(),
              SizedBox(height: 24),
              ManWidget(),
              LogoForm(),
            ],
          ),
        ),
      ),
    );
  }
}
