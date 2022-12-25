import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  static const space = SizedBox(height: 36);
  static const logoWidth = 64.0;
  static const heightWidget = 362.0;
  static const widthWidget = 400;
  static const titlePadding = EdgeInsets.symmetric(horizontal: 34);
  static const titleDescription = EdgeInsets.symmetric(horizontal: 36);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(Assets.images.logo, width: logoWidth),
          space,
          Padding(
            padding: titlePadding,
            child: Text(
              LocaleKeys.manage_water_title.tr(),
              textAlign: TextAlign.center,
              style: CustomTheme().largeText,
            ),
          ),
          space,
          Padding(
            padding: titleDescription,
            child: Text(
              LocaleKeys.description.tr(),
              textAlign: TextAlign.center,
              style: CustomTheme().header,
            ),
          ),
        ],
      ),
    );
  }
}
