import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class TitleSettingWidget extends StatefulWidget {
  const TitleSettingWidget(
    this.firstTitleText, {
    super.key,
    required this.downFlex,
    required this.upperFlex,
    this.subTitle,
  });

  final int downFlex;
  final int upperFlex;
  final String? subTitle;
  final String firstTitleText;

  @override
  State<TitleSettingWidget> createState() => _TitleSettingWidgetState();
}

class _TitleSettingWidgetState extends State<TitleSettingWidget> {
  static const fontSize = 34.0;
  static const descriptionSize = 20.0;
  static const emptyTitlePadding = EdgeInsets.only(top: 0.0, bottom: 0.0);
  static const fillTitlePadding = EdgeInsets.only(top: 24.0, bottom: 24.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        ),
        Padding(
          padding: widget.subTitle == null ? emptyTitlePadding : fillTitlePadding,
          child: Text(
            widget.subTitle ?? '',
            style: Theme.of(context).textTheme.headline3?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: descriptionSize,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ),
      ],
    );
  }
}
