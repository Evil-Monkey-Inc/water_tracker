import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/porsonal_settings_screen.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_bloc.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_event.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_state.dart';
import 'package:water_tracker/presentation/widgets/molecules/already_have_an_account.widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/hiding_on_keyboard_shown_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/person_image_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/privacy_policy_and_terms_widget.dart';
import 'package:water_tracker/presentation/widgets/organisms/sign_up_form.dart';

class SignUpLayout extends StatefulWidget {
  const SignUpLayout({super.key});

  @override
  State<SignUpLayout> createState() => _SignUpLayoutState();
}

class _SignUpLayoutState extends State<SignUpLayout> {
  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is ErrorRegistrationState) {
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
                  HidingOnKeyboardShownWidget(
                    childHeight: PersonImageWidget.imageHeight,
                    child: PersonImageWidget.womanWay(),
                  ),
                  SignUpForm(
                    isButtonEnabled: state is! LoadingSignUpState,
                    onSignUpButtonPressed: (email, pass) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PersonalSettingScreen(email: email),
                        ),
                      );
                      context.read<SignUpBloc>().add(CreateUserEvent(email, pass));
                    },
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
