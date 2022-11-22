import 'package:flutter/material.dart';
import 'package:water_tracker/assets..dart';
import 'package:water_tracker/custom_theme.dart';

class ManWidget extends StatelessWidget {
  const ManWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.manImagePath,
      height: CustomTheme.manHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
