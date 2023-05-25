import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/personal_settings_screen.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/sign_up_screen.dart';
import 'package:water_tracker/presentation/widgets/atoms/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/social_sign_up_button.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_bloc.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_event.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_state.dart';

class SocialSignUpLayout extends StatefulWidget {
  const SocialSignUpLayout({super.key});

  @override
  State<SocialSignUpLayout> createState() => _SocialSignUpLayoutState();
}

class _SocialSignUpLayoutState extends State<SocialSignUpLayout> {
  static const downFlex = 1;
  static const upperFlex = 3;
  static const widthOfImage = 240.0;
  static const heightOfImage = 400.0;

  static const spaces = SizedBox(height: 64);
  static const smallSpace = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SocialSignUpBloc, SocialSignUpState>(
        listener: (context, state) {
          if (state is ErrorAuthState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(LocaleKeys.error_try_again.tr())),
            );
          }
          if (state is SuccessfullyAuthState) {
            Navigator.of(context).pushNamed(PersonalSettingScreen.route);
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              smallSpace,
              const LogoWidget(),
              spaces,
              Padding(
                padding: paddingHorizontal,
                child: TitleSettingWidget(
                  LocaleKeys.choose_an_authorization_method.tr(),
                  upperFlex: upperFlex,
                  downFlex: downFlex,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  Assets.images.womanAuth.path,
                  width: widthOfImage,
                  height: heightOfImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: paddingHorizontal,
                child: AuthenticationWall(
                  onPressedEmail: () =>
                      Navigator.of(context).pushNamed(SignUpScreen.route),
                  onPressedGoogle: () => context
                      .read<SocialSignUpBloc>()
                      .add(LoginWithGoogleEvent()),
                ),
              ),
            ],
          );
        },
      body: SingleChildScrollView(
        child: Column(
          children: [
            smallSpace,
            const LogoWidget(),
            spaces,
            Padding(
              padding: paddingHorizontal,
              child: TitleSettingWidget(
                LocaleKeys.choose_an_authorization_method.tr(),
                upperFlex: upperFlex,
                downFlex: downFlex,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                Assets.images.womanAuth.path,
                width: widthOfImage,
                height: heightOfImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: paddingHorizontal,
              child: AuthenticationWall(
                onPressedEmail: () =>
                    Navigator.of(context).pushNamed(SignInScreen.route),
                onPressedGoogle: () {
                  // TODO(Benik): implement navigation
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
