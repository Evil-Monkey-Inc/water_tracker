import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/atoms/logo_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/social_sign_up_button.dart';

class SocialSignUpLayout extends StatefulWidget {
  const SocialSignUpLayout({super.key});

  @override
  State<SocialSignUpLayout> createState() => _SocialSignUpLayoutState();
}

class _SocialSignUpLayoutState extends State<SocialSignUpLayout> {
  static const downFlex = 1;
  static const upperFlex = 3;
  static const widthOfImage = 240.0;
  static const heightOfImage = 399.0;

  static const spaces = SizedBox(height: 64);
  static const smallSpace = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              onPressedEmail: () {
                // TODO(Benik): implement navigation
              },
              onPressedGoogle: () {},
            ),
          ),
        ],
      ),
    );
  }
}
