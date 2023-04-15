import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_holder.dart';
import 'package:water_tracker/env_variables.dart';

abstract class ThemeContainer {
  static ThemeData get lightTheme => _vendorTheme.lightTheme;

  static ThemeData get darkTheme => _vendorTheme.darkTheme;

  static const _isVendorTheme1 = EnvVariables.vendorThemeConfiguration == 1;
  static const _isVendorTheme2 = EnvVariables.vendorThemeConfiguration == 2;

  static final _venomTheme = VenomTheme();
  static final _carnageTheme = CarnageTheme();
  static final _defaultVendorTheme = _venomTheme;

  static VendorTheme get _vendorTheme {
    if (_isVendorTheme1) return _venomTheme;
    if (_isVendorTheme2) return _carnageTheme;
    return _defaultVendorTheme;
  }
}