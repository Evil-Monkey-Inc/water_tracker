import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_extension/radius_extension.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    required this.buttonColor,
    required this.textButtonColor,
    this.icon,
    this.image,
  });

  final bool isEnabled;
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textButtonColor;
  final IconData? icon;
  final Widget? image;
  static const paddingAroundButton = EdgeInsets.symmetric(vertical: 12.0);
  static const paddingIcon = EdgeInsets.only(right: 10);
  static const paddingImage = EdgeInsets.only(left: 1.0, right: 3.0);
  static const iconSize = 20.0;
  static const emptySpace = SizedBox();
  static const spaces = SizedBox(width: 8.0);
  static const elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    final buttonStyleProp = TextStyle(
      fontSize: CustomTheme.fontSizeButton,
      color: Theme.of(context).backgroundColor,
      fontFamily: Assets.fonts.senBold,
    );
    final a =
        Theme.of(context).extension<RadiusExtension>()?.buttonBorderRadius;
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: elevation,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.all(a!),
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(
          borderRadius: CustomTheme.roundingButton,
        ),
      ),
      child: Padding(
        padding: paddingAroundButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null)
              Padding(
                padding: paddingIcon,
                child: Icon(icon),
              ),
            image != null
                ? Padding(padding: paddingImage, child: image!)
                : emptySpace,
            spaces,
            Text(
              text,
              style: buttonStyleProp.copyWith(color: textButtonColor),
            ),
          ],
        ),
      ),
    );
  }
}
