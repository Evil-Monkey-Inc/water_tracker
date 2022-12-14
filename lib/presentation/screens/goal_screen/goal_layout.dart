import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/data/models/goal_widget_model.dart';
import 'package:water_tracker/data/models/goals.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/goal_widget.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class GoalLayout extends StatelessWidget {
  const GoalLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const spacesBetween = SizedBox(height: 16);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const spacesBetweenGoal = SizedBox(width: 16);
  static const paddingTop = EdgeInsets.only(top: 16);
  static const upperFlex = 3;
  static const downFlex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            spaces,
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                children: Goals.values
                    .map(
                      (goal) => GoalWidget(
                        onChanged: (_) => print(goal),
                        model: GoalWidgetModel(
                          goal: goal,
                          title: goal.title,
                          imagePath: goal.assetPath,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            spacesBetween,
            CustomButton(onPressed: () {}, text: LocaleKeys.next.tr()),
          ],
        ),
      ),
    );
  }
}
