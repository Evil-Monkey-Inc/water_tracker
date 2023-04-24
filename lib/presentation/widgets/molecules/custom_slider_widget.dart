import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({
    super.key,
    required this.onChanged,
    required this.sliderNameAndProperty,
    this.maxValue = 0,
    this.minValue = 0,
  });

  final void Function(int values) onChanged;
  final Text sliderNameAndProperty;
  final int maxValue;
  final int minValue;

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  static const divisions = 180;
  static const lineHeight = 1.0;
  static const enabledRadius = 12;
  static const disabledThumbRadius = 5;
  static const spaces = SizedBox(height: 24);
  static const fontSize = 56.0;

  late int generalInfValue;

  @override
  void initState() {
    generalInfValue = widget.minValue.toInt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaces,
        Align(
          alignment: Alignment.bottomLeft,
          child: widget.sliderNameAndProperty,
        ),
        spaces,
        Text(
          generalInfValue.round().toString(),
          style: Theme.of(context).textTheme.headline3?.copyWith(
              fontSize: fontSize,
              fontFamily: Assets.fonts.senRegular,
              fontWeight: FontWeight.w300,
              color: Theme.of(context).primaryColor),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: enabledRadius.toDouble(),
              disabledThumbRadius: disabledThumbRadius.toDouble(),
            ),
            showValueIndicator: ShowValueIndicator.always,
            trackHeight: lineHeight,
            activeTrackColor: Theme.of(context).primaryColor,
            inactiveTrackColor: Theme.of(context).primaryColorLight,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbColor: Theme.of(context).primaryColor,
          ),
          child: Slider(
            thumbColor: Theme.of(context).primaryColor,
            value: generalInfValue.toDouble(),
            min: widget.minValue.toDouble(),
            max: widget.maxValue.toDouble(),
            divisions: divisions,
            onChanged: (value) => setState(
              () {
                generalInfValue = value.toInt();
                widget.onChanged(generalInfValue);
              },
            ),
          ),
        ),
      ],
    );
  }
}
