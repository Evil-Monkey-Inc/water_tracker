import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class TitleSettingWidget extends StatefulWidget {
  const TitleSettingWidget(
    this.firstTitleText, {
    super.key,
    required this.downFlex,
    required this.upperFlex,
  });

  final String firstTitleText;
  final int downFlex;
  final int upperFlex;

  @override
  State<TitleSettingWidget> createState() => _TitleSettingWidgetState();
}

class _TitleSettingWidgetState extends State<TitleSettingWidget> {
  static const fontSize = 34.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: widget.upperFlex,
          child: Text(
            widget.firstTitleText,
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: fontSize,
                  color: LightPalette.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.fonts.senBold,
                ),
          ),
        ),
        Spacer(flex: widget.downFlex),
      ],
    );
  }
}
