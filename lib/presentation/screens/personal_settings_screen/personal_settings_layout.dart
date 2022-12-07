import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class PersonalSettingsLayout extends StatelessWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const personalSettingTitleScreen = 'Tell a bit more \ngeneral info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              spaces,
              NameAndSkipWidget(onPressed: () {}),
              spaces,
              TitleSettingWidget(titleText: LocaleKeys.tell_more_general_info.tr()),
            ],
          ),
        ),
      ),
    );
  }
}
