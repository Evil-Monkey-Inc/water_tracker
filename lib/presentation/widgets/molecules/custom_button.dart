import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
    this.icon,
    this.image,
    required this.text,
    this.isEnabled = true,
    required this.onPressed,
    required this.buttonColor,
    required this.textButtonColor,
  });

  final String text;
  final Widget? image;
  final Widget? icon;
  final bool isEnabled;
  final Color buttonColor;
  final Color textButtonColor;
  final VoidCallback? onPressed;

  static const elevation = 0.0;
  static const iconSize = 20.0;

  final emptyButtonIcon = Container();
  static const emptySpace = SizedBox();
  static const spaces = SizedBox(width: 8.0);
  static const paddingButton = EdgeInsets.all(8.0);
  static const paddingImage = EdgeInsets.only(left: 1.0, right: 3.0);
  static const paddingAroundButton = EdgeInsets.symmetric(vertical: 12.0);

  @override
  Widget build(BuildContext context) {
    final buttonStyleProp = TextStyle(
      fontSize: CustomTheme.fontSizeButton,
      color: Theme.of(context).backgroundColor,
      fontFamily: Assets.fonts.senBold,
    );
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: elevation,
        shadowColor: Colors.transparent,
        padding: paddingButton,
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(
          borderRadius: CustomTheme.roundingButton,
        ),
      ),
      child: Padding(
        padding: paddingAroundButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? emptyButtonIcon,
            image ?? emptyButtonIcon,
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
