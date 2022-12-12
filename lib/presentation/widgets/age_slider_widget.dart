import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class AgeSliderWidget extends StatefulWidget {
  const AgeSliderWidget({Key? key}) : super(key: key);

  @override
  State<AgeSliderWidget> createState() => _AgeSliderWidgetState();
}

class _AgeSliderWidgetState extends State<AgeSliderWidget> {
  final int divisions = 120;
  final double enabledThumbRadius = 12;
  final double disabledThumbRadius = 5;
  final double minValue = 2;
  final double maxValue = 100;
  double values = 0.0;
  double lineHeight = 1.0;
  var ageTextProperty = Text(LocaleKeys.age.tr(), style: const TextStyle(fontSize: 20));
  static const spaces = SizedBox(height: 24);
  static const ageCounterProperty = TextStyle(fontSize: 60, color: CustomTheme.mainColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaces,
        Align(alignment: Alignment.bottomLeft, child: ageTextProperty),
        spaces,
        Text(
          values.round().toString(),
          style: ageCounterProperty,
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: enabledThumbRadius,
              disabledThumbRadius: disabledThumbRadius,
            ),
            showValueIndicator: ShowValueIndicator.always,
            trackHeight: lineHeight,
            activeTrackColor: CustomTheme.mainColor,
            inactiveTrackColor: CustomTheme.backgroundSliderLine,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbColor: CustomTheme.backgroundSliderLine,
          ),
          child: Slider(
            thumbColor: CustomTheme.mainColor,
            value: values,
            min: minValue,
            max: maxValue,
            divisions: divisions,
            onChanged: (double value) {
              setState(
                () {
                  values = value;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
