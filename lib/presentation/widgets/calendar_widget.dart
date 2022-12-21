import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  final dataNow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('EEE, d').format(dataNow),
      style: CustomTheme.sizeOfDataWidget,
    );
  }
}
