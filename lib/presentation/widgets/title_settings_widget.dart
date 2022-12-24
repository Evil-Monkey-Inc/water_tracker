import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class TitleSettingWidget extends StatefulWidget {
  const TitleSettingWidget(this.firstTitleText, {Key? key, required this.downFlex, required this.upperFlex})
      : super(key: key);
  final String firstTitleText;
  final int downFlex;
  final int upperFlex;

  @override
  State<TitleSettingWidget> createState() => _TitleSettingWidgetState();
}

class _TitleSettingWidgetState extends State<TitleSettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: widget.upperFlex,
          child: Text(
            widget.firstTitleText,
            style: CustomTheme().titleSettingsProperty,
          ),
        ),
        Spacer(flex: widget.downFlex),
      ],
    );
  }
}
