import 'package:flutter/material.dart';

class IconImageWidget extends StatelessWidget {
  const IconImageWidget(
    this.imagePath, {
    Key? key,
  }) : super(key: key);

  final String imagePath;

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
