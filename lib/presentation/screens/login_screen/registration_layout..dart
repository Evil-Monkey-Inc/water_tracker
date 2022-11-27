import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/not_have_account_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/registration_form.dart';
import 'package:water_tracker/presentation/widgets/woman_widget.dart';

class RegistrationLayout extends StatelessWidget {
  const RegistrationLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
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
              spaces,
              LogoWidget(),
              spaces,
              WomanWidget(),
              RegisterForm(),
              PrivacyPolicyAndTermsWidget(),
              spaces,
              NotHaveAccount(), // TODO: CHANGE WIDGET FOR LODIN MESSEGE
              spaces,
            ],
          ),
        ),
      ),
    );
  }
}
