import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    required this.buttonColor,
    required this.textButtonColor,
  }) : super(key: key);

  final bool isEnabled;
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textButtonColor;
  static const paddingInsideButton = EdgeInsets.all(8.0);
  static const paddingAroundButton = EdgeInsets.symmetric(vertical: 12.0);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 0.0,
        shadowColor: CustomTheme.customButtonShadowColor,
        padding: paddingInsideButton,
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(borderRadius: CustomTheme.roundingButton),
      ),
      child: Padding(
        padding: paddingAroundButton,
        child: Text(
          text,
          style:
              TextStyle(fontSize: CustomTheme.fontSizeButton, color: textButtonColor, fontFamily: Assets.fonts.senBold),
        ),
      ),
    );
  }
}
