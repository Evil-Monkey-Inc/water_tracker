import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed, required this.isEnabled})
      : super(key: key);

  final bool isEnabled;
  final String text;
  final VoidCallback? onPressed;
  static const paddingInsideButton = EdgeInsets.all(8.0);
  static const paddingAroundButton = EdgeInsets.symmetric(vertical: 12.0);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        primary: CustomTheme.buttonColor,
        padding: paddingInsideButton,
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(borderRadius: CustomTheme.roundingButton),
      ),
      child: Padding(
        padding: paddingAroundButton,
        child: Text(
          text,
          style: CustomTheme.buttonSize,
        ),
      ),
    );
  }
}
