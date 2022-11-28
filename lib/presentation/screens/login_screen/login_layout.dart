import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/logo_form.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/not_have_account_widget.dart';
import 'package:water_tracker/presentation/widgets/personal_image_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({Key? key}) : super(key: key);

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              spaces,
              const LogoWidget(),
              spaces,
              PersonImageWidget.manWay(),
              const LogoForm(),
              const PrivacyPolicyAndTermsWidget(),
              spaces,
              const NotHaveAccount(),
              spaces,
            ],
          ),
        ),
      ),
    );
  }
}
