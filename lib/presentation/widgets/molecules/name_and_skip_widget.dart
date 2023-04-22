import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class NameAndSkipWidget extends StatelessWidget {
  const NameAndSkipWidget({super.key, required this.onPressed});

  final emptySpace = const SizedBox();
  final VoidCallback? onPressed;
  static const sizeOfElevation = 0.0;
  static const size = 20.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: sizeOfElevation,
      centerTitle: true,
      title: Text(
        LocaleKeys.setup_profile.tr(),
        style: Theme.of(context).textTheme.headline1?.copyWith(
          fontSize: size,
          color: LightPalette.primaryColor,
          fontFamily: Assets.fonts.senBold,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        TextButton(
          onPressed:onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.white),
        ),
          child:Text(
            LocaleKeys.skip.tr(),
            style: Theme.of(context).textTheme.headline1?.copyWith(
                fontWeight: FontWeight.w500,
            ),
          ),
        )],
    );
  }
}
