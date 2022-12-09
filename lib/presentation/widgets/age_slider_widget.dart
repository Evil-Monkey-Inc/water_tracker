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
  double values = 100.0;
  double thumb = 0.0;
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
            showValueIndicator: ShowValueIndicator.always,
            trackHeight: 1,
            activeTrackColor: CustomTheme.mainColor,
            inactiveTrackColor: Color(0xFFF1F1F1),
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbColor: Color(0xFFF1F1F1),
          ),
          child: Slider(
            thumbColor: CustomTheme.mainColor,
            value: values,
            min: 0,
            max: 100,
            divisions: 80,
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
