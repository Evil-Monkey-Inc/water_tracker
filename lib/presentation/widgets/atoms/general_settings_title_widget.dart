import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  static const fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: Theme.of(context).textTheme.headline3?.copyWith(
            fontSize: fontSize,
            fontFamily: Assets.fonts.senRegular,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor,
          ),
    );
  }
}
