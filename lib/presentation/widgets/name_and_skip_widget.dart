import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class NameAndSkipWidget extends StatelessWidget {
  const NameAndSkipWidget({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onLongPress: null,
            onPressed: null,
            child: Text(
              LocaleKeys.setup_profile.tr(),
              style: CustomTheme.setupScreenProperty,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              LocaleKeys.skip.tr(),
              style: CustomTheme.skipButtonsStyle,
            ),
          ),
        ),
      ],
    );
  }
}
