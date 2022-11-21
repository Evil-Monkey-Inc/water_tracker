import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/custom_theme.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          CustomTheme.logoImagePath,
          width: CustomTheme.logoWidth,
        ),
        const SizedBox(width: CustomTheme.padding),
        SvgPicture.asset(
          CustomTheme.logoTextImage,
          width: CustomTheme.logoTextWidth,
        ),
      ],
    );
  }
}
