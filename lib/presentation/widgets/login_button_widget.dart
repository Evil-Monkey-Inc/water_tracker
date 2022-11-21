import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: CustomTheme.buttonColor,
        padding: CustomTheme.paddingInsideButton,
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(borderRadius: CustomTheme.roundingButton),
      ),
      child: Padding(
        padding: CustomTheme.paddingAroundButton,
        child: Text(
          text,
          style: CustomTheme.buttonSize,
        ),
      ),
    );
  }
}
