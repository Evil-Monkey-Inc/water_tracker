import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  static const space = SizedBox(height: 36);
  static const logoWidth = 64.0;
  static const heightWidget = 362.0;
  static const widthWidget = 400;
  static const titlePadding = EdgeInsets.symmetric(horizontal: 34);
  static const titleDescription = EdgeInsets.symmetric(horizontal: 36);
  static const fontSize = 34.0;
  static const  txtSize = 20.0;

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
              style: Theme.of(context).textTheme.headline3?.copyWith(
                fontSize: fontSize,
                fontFamily: Assets.fonts.senRegular,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor
              ),
            ),
          ),
          space,
          Padding(
            padding: titleDescription,
            child: Text(
              LocaleKeys.description.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: txtSize,
                  color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
