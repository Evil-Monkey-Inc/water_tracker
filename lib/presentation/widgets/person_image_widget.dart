import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class PersonImageWidget extends StatelessWidget {
  const PersonImageWidget(
    this.imagePath, {
    Key? key,
  }) : super(key: key);
  static const imageHeight = 241.0;
  final String imagePath;

  factory PersonImageWidget.womanWay() => PersonImageWidget(Assets.images.womanLogin.path);

  factory PersonImageWidget.manWay() => PersonImageWidget(Assets.images.manLogin.path);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: imageHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
