import 'package:flutter/material.dart';
import 'package:water_tracker/assets.dart';

class PersonImageWidget extends StatelessWidget {
  const PersonImageWidget(
    this.imagePath, {
    Key? key,
  }) : super(key: key);
  static const womanHeight = 241.0;
  final String imagePath;

  factory PersonImageWidget.womanWay() => const PersonImageWidget(Assets.womanImagePath);
  factory PersonImageWidget.manWay() => const PersonImageWidget(Assets.manImagePath);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: womanHeight,
      fit: BoxFit.fitHeight,
    );
  }
}