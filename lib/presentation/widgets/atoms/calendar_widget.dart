import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key, required this.dateTime});

  final String dateTime;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  static const fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.dateTime.toString(),
      style: Theme.of(context).textTheme.headline3?.copyWith(
            fontSize: fontSize,
            fontFamily: Assets.fonts.senRegular,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor,
          ),
    );
  }
}
