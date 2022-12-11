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
  var values = 0.0;
  final double min = 5;
  final double max = 100;
  final int divisions = 80;

  static const lineHeight = 1.0;
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
          data: const SliderThemeData(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 12,
              disabledThumbRadius: 5,
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
            min: min,
            max: max,
            divisions: divisions,
            onChanged: (value) => setState(() => values = value),
          ),
        ),
      ],
    );
  }
}
