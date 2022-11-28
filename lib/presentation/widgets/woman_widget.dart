import 'package:flutter/material.dart';
import 'package:water_tracker/assets.dart';

class WomanWidget extends StatelessWidget {
  const WomanWidget({Key? key}) : super(key: key);
  static const womanHeight = 241.0;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.womanImagePath,
      height: womanHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
