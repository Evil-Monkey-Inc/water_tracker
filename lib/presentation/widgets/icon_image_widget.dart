import 'package:flutter/material.dart';
import 'package:water_tracker/assets.dart';

class IconImageWidget extends StatelessWidget {
  const IconImageWidget(
    this.imagePath, {
    Key? key,
  }) : super(key: key);
  final String imagePath;

  factory IconImageWidget.bottleIconWay() => const IconImageWidget(Assets.bottleIconImage);
  factory IconImageWidget.weightIconWay() => const IconImageWidget(Assets.weightIconImage);
  factory IconImageWidget.shineSkinIconWay() => const IconImageWidget(Assets.starsIconImage);
  factory IconImageWidget.lifeStyleIconWay() => const IconImageWidget(Assets.hikeIconImage);
  factory IconImageWidget.digestionIconWay() => const IconImageWidget(Assets.carrotIconImage);
  factory IconImageWidget.otherIconWay() => const IconImageWidget(Assets.dumbbellsIconImage);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
