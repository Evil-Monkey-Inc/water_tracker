import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';

class NameAndSkipWidget extends StatelessWidget {
  const NameAndSkipWidget({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;
  static const skipButtonText = 'Skip';
  static const screenName = 'Setup profile';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
            onPressed: onPressed,
            child: const Text(
              skipButtonText,
              style: CustomTheme.skipButtonsStyle,
            ),
          ),
        ),
      ],
    );
  }
}
