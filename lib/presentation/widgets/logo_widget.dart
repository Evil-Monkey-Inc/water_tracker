import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  static const logoText = 'WaterApp';
  static const logoImagePath = "assets/images/logo.svg";
  static const logoHeight = 18.75;
  static const logoWidth = 15.0;
  static const padding = 8.0;
  static const textSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          logoImagePath,
          height: logoHeight,
          width: logoWidth,
        ),
        const SizedBox(width: padding),
        const Text(
          logoText,
          style: TextStyle(fontSize: textSize),
        ),
      ],
    );
  }
}
