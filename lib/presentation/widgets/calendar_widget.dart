import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key, required this.dateTime}) : super(key: key);

  final String dateTime;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.dateTime.toString(),
      style: CustomTheme.sizeOfDataWidget,
    );
  }
}
