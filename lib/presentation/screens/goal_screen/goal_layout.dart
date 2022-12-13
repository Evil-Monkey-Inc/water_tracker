import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class GoalLayout extends StatelessWidget {
  const GoalLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const upperFlex = 2;
  static const downFlex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          children: [
            spaces,
            NameAndSkipWidget(
              onPressed: () {},
            ),
            spaces,
            TitleSettingWidget(
              LocaleKeys.what_is_your_goal.tr(),
              upperFlex: upperFlex,
              downFlex: downFlex,
            ),
          ],
        ),
      ),
    );
  }
}
