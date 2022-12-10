import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class WeightSliderWidget extends StatefulWidget {
  const WeightSliderWidget({Key? key, required this.onChanged}) : super(key: key);
  final void Function(int values) onChanged;

  @override
  State<WeightSliderWidget> createState() => _WeightSliderWidgetState();
}

class _WeightSliderWidgetState extends State<WeightSliderWidget> {
  var weightValue = 0;
  double thumb = 0.0;
  double lineHeight = 1.0;
  var ageTextProperty = Text(LocaleKeys.weight.tr(), style: const TextStyle(fontSize: 20));
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
          weightValue.round().toString(),
          style: ageCounterProperty,
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 12,
              disabledThumbRadius: 5,
            ),
            showValueIndicator: ShowValueIndicator.always,
            trackHeight: lineHeight,
            activeTrackColor: CustomTheme.mainColor,
            inactiveTrackColor: Colors.blue, // TODO: CHANGE
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbColor: Colors.blue, // TODO: CHANGE
          ),
          child: Slider(
            thumbColor: CustomTheme.mainColor,
            value: weightValue.toDouble(),
            min: 0,
            max: 150,
            divisions: 80,
            onChanged: (value) => setState(() {
              weightValue = value.toInt();
              widget.onChanged(weightValue);
            }),
          ),
        ),
      ],
    );
  }
}
