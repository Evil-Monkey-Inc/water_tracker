import 'package:flutter/material.dart';

class PhotoCardWidget extends StatelessWidget {
  const PhotoCardWidget({
    super.key,
    this.size,
    required this.photo,
  });

  final double? size;
  final String? photo;

  static const containerSize = 420.0;

  Widget get showPhotoOrIcon =>
      photo == null ? const Icon(Icons.person) : Image.asset(photo!);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: size ?? containerSize,
      height: size ?? containerSize,
      child: FittedBox(fit: BoxFit.contain, child: showPhotoOrIcon),
    );
  }
}
