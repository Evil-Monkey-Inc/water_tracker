import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class TitleSettingWidget extends StatelessWidget {
  const TitleSettingWidget(this.firstTitleText, {Key? key}) : super(key: key);
  final String firstTitleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Text(
            firstTitleText,
            style: CustomTheme.titleSettingsProperty,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
