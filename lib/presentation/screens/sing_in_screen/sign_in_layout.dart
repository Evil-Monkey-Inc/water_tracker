import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/bloc/sign_in_bloc.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/bloc/sign_in_event.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/bloc/sign_in_state.dart';
import 'package:water_tracker/presentation/widgets/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/not_have_account_widget.dart';
import 'package:water_tracker/presentation/widgets/person_image_widget.dart';
import 'package:water_tracker/presentation/widgets/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/sign_in_form.dart';

class SignInLayout extends StatefulWidget {
  const SignInLayout({Key? key}) : super(key: key);

  @override
  State<SignInLayout> createState() => _SignInLayoutState();
}

class _SignInLayoutState extends State<SignInLayout> {
  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<SignInBloc, SignInState>(
          listener: (BuildContext context, state) {
            if (state is ErrorSignInState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(LocaleKeys.error_try_again.tr())));
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
                  PersonImageWidget.manWay(),
                  SignInForm(
                    isButtonEnabled: state is! LoadingSignInState,
                    onSignInButtonPressed: (String email, String password) {
                      context.read<SignInBloc>().add(SignInUserEvent(email, password));
                    },
                  ),
                  const PrivacyPolicyAndTermsWidget(),
                  spaces,
                  const NotHaveAccount(),
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
