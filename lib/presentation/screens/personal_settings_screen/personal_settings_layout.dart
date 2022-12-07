import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class PersonalSettingsLayout extends StatelessWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const screenName = 'Setup profile';
  static const skipButtonText = 'Skip';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              spaces,
              const Align(
                alignment: Alignment.center,
                child: TextButton(
                  onLongPress: null,
                  onPressed: null,
                  child: Text(
                    screenName,
                    style: CustomTheme.setupScreenProperty,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: call some code
                  },
                  child: const Text(
                    skipButtonText,
                    style: CustomTheme.skipButtonsStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
