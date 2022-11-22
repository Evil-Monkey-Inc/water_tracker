import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/assets.dart';
import 'package:water_tracker/custom_theme.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  static const padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.logoImagePath,
          width: CustomTheme.logoWidth,
        ),
        const SizedBox(width: padding),
        SvgPicture.asset(
          Assets.logoTextImage,
          width: CustomTheme.logoTextWidth,
        ),
      ],
    );
  }
}
