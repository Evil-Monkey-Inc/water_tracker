import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({
    Key? key,
    required this.onChanged,
    required this.sliderNameAndProperty,
    this.maxValue = 0,
    this.minValue = 0,
  }) : super(key: key);

  final void Function(int values) onChanged;
  final Text sliderNameAndProperty;
  final int maxValue;
  final int minValue;

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  static const divisions = 180;
  static const double lineHeight = 1.0;
  static const enabledRadius = 12;
  static const disabledThumbRadius = 5;
  static const spaces = SizedBox(height: 24);

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
        Align(alignment: Alignment.bottomLeft, child: widget.sliderNameAndProperty),
        spaces,
        Text(
          generalInfValue.round().toString(),
          style: CustomTheme().counterProperty,
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: enabledRadius.toDouble(),
              disabledThumbRadius: disabledThumbRadius.toDouble(),
            ),
            showValueIndicator: ShowValueIndicator.always,
            trackHeight: lineHeight,
            activeTrackColor: CustomTheme.mainColor,
            inactiveTrackColor: CustomTheme.backgroundSliderLine,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
            thumbColor: CustomTheme.mainColor,
          ),
          child: Slider(
            thumbColor: CustomTheme.mainColor,
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
