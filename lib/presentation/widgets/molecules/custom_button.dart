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
  });

  final bool isEnabled;
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textButtonColor;
  static const paddingAroundButton = EdgeInsets.symmetric(vertical: 12.0);
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).dividerColor;
    const customButtonShadowColor = Colors.transparent;
    final buttonStyleProp = TextStyle(
      fontSize: CustomTheme.fontSizeButton,
      color: Theme.of(context).backgroundColor,
      fontFamily: Assets.fonts.senBold,
    );
    final a = Theme.of(context).extension<RadiusExtension>()?.buttonBorderRadius;
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 0.0,
        shadowColor: customButtonShadowColor,
        padding: EdgeInsets.all(a!),
        minimumSize: CustomTheme.minimumSizeButton,
        shape: const RoundedRectangleBorder(
          borderRadius: CustomTheme.roundingButton,
        ),
      ),
      child: Padding(
        padding: paddingAroundButton,
        child: Text(
          text,
          style: buttonStyleProp.copyWith(color: textButtonColor),
        ),
      ),
    );
  }
}
