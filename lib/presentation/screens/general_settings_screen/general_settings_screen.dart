import 'package:flutter/material.dart';
import 'package:water_tracker/presentation/screens/general_settings_screen/general_settings_layout.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  static const route = 'general_settings_screen';

  @override
  Widget build(BuildContext context) {
    return const GeneralSettingsLayout();
  }
}
