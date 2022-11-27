import 'package:flutter/material.dart';
import 'package:water_tracker/assets.dart';
import 'package:water_tracker/custom_theme.dart';

class WomanWidget extends StatelessWidget {
  const WomanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.womanImagePath,
      height: CustomTheme.womanHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
