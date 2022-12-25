import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class NameAndSkipWidget extends StatelessWidget {
  const NameAndSkipWidget({Key? key, required this.onPressed}) : super(key: key);

  final emptySpace = const SizedBox();
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: CustomTheme.backgroundNameSkipWidgetColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        LocaleKeys.setup_profile.tr(),
        style: CustomTheme().setupScreenProperty,
      ),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            LocaleKeys.skip.tr(),
            style: CustomTheme().skipButtonsStyle,
          ),
        ),
      ],
    );
  }
}
