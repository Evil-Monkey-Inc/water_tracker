import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_bloc.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_events.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_state.dart';
import 'package:water_tracker/presentation/widgets/already_have_an_account.widget.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/personal_image_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/registration_form.dart';

class RegistrationLayout extends StatefulWidget {
  const RegistrationLayout({Key? key}) : super(key: key);

  @override
  State<RegistrationLayout> createState() => _RegistrationLayoutState();
}

class _RegistrationLayoutState extends State<RegistrationLayout> {
  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<RegistrationBloc, RegistrationState>(
          listener: (context, state) {
            if (state is ErrorRegistrationState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(LocaleKeys.error_try_again)));
            }
          },
          builder: (BuildContext context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  spaces,
                  const LogoWidget(),
                  spaces,
                  PersonImageWidget.womanWay(),
                  RegisterForm(
                    isButtonEnabled: state is! LoadingRegistrationState,
                    onSignUpButtonPressed: (email, pass) =>
                        context.read<RegistrationBloc>().add(CreateUserEvent(email, pass)),
                  ),
                  const PrivacyPolicyAndTermsWidget(),
                  spaces,
                  const AlreadyHaveAnAccountWidget(),
                  spaces,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
