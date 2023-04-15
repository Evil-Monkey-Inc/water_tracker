import 'dart:ui';
import 'package:flutter/material.dart';


class RadiusExtension extends ThemeExtension<RadiusExtension> {
  const RadiusExtension._({required this.buttonBorderRadius});


  static const _buttonBorderRadiusValue = 8.0;

  static const instance = RadiusExtension._(
    buttonBorderRadius: _buttonBorderRadiusValue,
  );

  final double buttonBorderRadius;

  @override
  ThemeExtension<RadiusExtension> copyWith({
    double? buttonBorderRadius,
  }) =>
      RadiusExtension._(
        buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<RadiusExtension> lerp(
      ThemeExtension<RadiusExtension>? other,
      double t,
      ) {
    if (other is! RadiusExtension) return this;

    return RadiusExtension._(
      buttonBorderRadius:
      lerpDouble(buttonBorderRadius, other.buttonBorderRadius, t) ?? 0,
    );
  }
}