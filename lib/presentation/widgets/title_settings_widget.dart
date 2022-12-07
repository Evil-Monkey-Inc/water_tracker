import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class TitleSettingWidget extends StatelessWidget {
  const TitleSettingWidget({Key? key, required this.titleText}) : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        titleText,
        style: CustomTheme.titleSettingsProperty,
      ),
    );
  }
}
