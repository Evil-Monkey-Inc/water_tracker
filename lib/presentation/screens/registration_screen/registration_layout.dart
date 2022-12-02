import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/already_have_an_account.widget.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/personal_image_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/registration_form.dart';

class RegistrationLayout extends StatelessWidget {
  const RegistrationLayout({Key? key}) : super(key: key);

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
              PersonImageWidget.womanWay(),
              const RegisterForm(),
              const PrivacyPolicyAndTermsWidget(),
              spaces,
              const AlreadyHaveAnAccountWidget(),
              spaces,
            ],
          ),
        ),
      ),
    );
  }
}
