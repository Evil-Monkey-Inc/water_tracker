import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  // TODO: Add assets path to classes static fields (how with colors)
  // TODO: Add localization
  static const assetsFolder = "assets/";
  static const imagesFolder = "$assetsFolder/images";
  static const logoTextImage = "$imagesFolder/logo_name.svg";
  static const logoImagePath = "$imagesFolder/logo.svg";
  static const logoWidth = 16.0;
  static const logoTextWidth = 87.5;
  static const padding = 8.0;
  static const textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          logoImagePath,
          width: logoWidth,
        ),
        const SizedBox(width: padding),
        SvgPicture.asset(
          logoTextImage,
          width: logoTextWidth,
        ),
      ],
    );
  }
}
