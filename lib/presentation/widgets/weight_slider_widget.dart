import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget(
      {Key? key, required this.onChanged, required this.sliderNameAndProperty, this.maxValue, this.minValue})
      : super(key: key);
  final void Function(int values) onChanged;
  final Text sliderNameAndProperty;
  final double? maxValue;
  final double? minValue;

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  var weightValue = 0;
  static const double lineHeight = 1.0;
  static const enabledRadius = 12;
  static const disabledThumbRadius = 5;
  static const spaces = SizedBox(height: 24);
  static const counterProperty = TextStyle(fontSize: 60, color: CustomTheme.mainColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaces,
        Align(alignment: Alignment.bottomLeft, child: widget.sliderNameAndProperty),
        spaces,
        Text(
          weightValue.round().toString(),
          style: counterProperty,
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
            value: weightValue.toDouble(),
            min: widget.minValue!,
            max: widget.maxValue!,
            divisions: 120,
            onChanged: (value) => setState(
              () {
                weightValue = value.toInt();
                widget.onChanged(weightValue);
              },
            ),
          ),
        ),
      ],
    );
  }
}
