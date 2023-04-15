import 'dart:ui';

import 'package:flutter/material.dart';

class SizeExtension extends ThemeExtension<SizeExtension> {
  const SizeExtension._({required this.iconSize});

  static const _iconSize = 24.0;

  static const instance = SizeExtension._(
    iconSize: _iconSize,
  );

  final double iconSize;

  @override
  ThemeExtension<SizeExtension> copyWith({
    double? buttonBorderRadius,
  }) =>
      SizeExtension._(
        iconSize: buttonBorderRadius ?? iconSize,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<SizeExtension> lerp(
      ThemeExtension<SizeExtension>? other,
      double t,
      ) {
    if (other is! SizeExtension) return this;

    return SizeExtension._(
      iconSize:
      lerpDouble(iconSize, other.iconSize, t) ?? 0,
    );
  }
}
