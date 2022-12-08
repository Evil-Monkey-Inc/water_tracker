import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class TitleSettingWidget extends StatelessWidget {
  const TitleSettingWidget(this.firstTitleText, this.secondTitleText, {Key? key}) : super(key: key);
  final String firstTitleText;
  final String secondTitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            firstTitleText,
            style: CustomTheme.titleSettingsProperty,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            secondTitleText,
            style: CustomTheme.titleSettingsProperty,
          ),
        ),
      ],
    );
  }
}
