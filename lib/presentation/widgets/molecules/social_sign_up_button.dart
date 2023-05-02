import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class AuthenticationWall extends StatefulWidget {
  const AuthenticationWall({
    super.key,
    required this.onPressedEmail,
    required this.onPressedGoogle,
  });

  final VoidCallback onPressedEmail;
  final VoidCallback onPressedGoogle;

  @override
  State<AuthenticationWall> createState() => _AuthenticationWallState();
}

class _AuthenticationWallState extends State<AuthenticationWall> {
  static const space = SizedBox(height: 18.0);
  static const paddingIcon = EdgeInsets.only(right: 8);

  static const width = 40.0;
  static const height = 19.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: widget.onPressedEmail,
          icon:  const Padding(
            padding: paddingIcon,
            child: Icon(Icons.email_outlined),
          ),
          text: LocaleKeys.continue_via_email.tr(),
          isEnabled: true,
          buttonColor: Theme.of(context).primaryColor,
          textButtonColor: Theme.of(context).primaryColorLight,
        ),
        space,
        CustomButton(
          onPressed: widget.onPressedGoogle,
          image: Image.asset(
            Assets.images.google.path,
            width: width,
            height: height,
            color: Theme.of(context).primaryColorLight,
          ),
          text: LocaleKeys.continue_via_google.tr(),
          isEnabled: true,
          buttonColor: Theme.of(context).primaryColor,
          textButtonColor: Theme.of(context).primaryColorLight,
        ),
      ],
    );
  }
}
