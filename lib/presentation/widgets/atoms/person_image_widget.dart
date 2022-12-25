import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';

class PersonImageWidget extends StatelessWidget {
  const PersonImageWidget(
    this.imagePath, {
    super.key,
  });

  factory PersonImageWidget.womanWay() => PersonImageWidget(Assets.images.womanLogin.path);

  factory PersonImageWidget.manWay() => PersonImageWidget(Assets.images.manLogin.path);

  factory PersonImageWidget.mainWay() => PersonImageWidget(Assets.images.mainScreenPerson.path);
  static const imageHeight = 241.0;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: imageHeight,
      fit: BoxFit.fitHeight,
    );
  }
}
