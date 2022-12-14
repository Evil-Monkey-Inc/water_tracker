import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/goal_widget.dart';
import 'package:water_tracker/presentation/widgets/icon_image_widget.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class GoalLayout extends StatelessWidget {
  const GoalLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const spacesBetween = SizedBox(height: 16);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const spacesBetweenGoal = SizedBox(width: 16);
  static const paddingTop = EdgeInsets.only(top: 16);
  static const upperFlex = 2;
  static const downFlex = 2;

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GoalWidget(
                      titleGoal: LocaleKeys.drink_more_water.tr(),
                      iconImageWidget: IconImageWidget.bottleIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                    spacesBetweenGoal,
                    GoalWidget(
                      titleGoal: LocaleKeys.lose_weight.tr(),
                      iconImageWidget: IconImageWidget.weightIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                  ],
                ),
                spacesBetween,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GoalWidget(
                      titleGoal: LocaleKeys.shine_skin.tr(),
                      iconImageWidget: IconImageWidget.shineSkinIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                    spacesBetweenGoal,
                    GoalWidget(
                      titleGoal: LocaleKeys.lead_a_healthy_lifestyle.tr(),
                      iconImageWidget: IconImageWidget.lifeStyleIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                  ],
                ),
                spacesBetween,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GoalWidget(
                      titleGoal: LocaleKeys.improve_digestion.tr(),
                      iconImageWidget: IconImageWidget.digestionIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                    spacesBetweenGoal,
                    GoalWidget(
                      titleGoal: LocaleKeys.another.tr(),
                      iconImageWidget: IconImageWidget.otherIconWay(),
                      onChanged: (goal) {
                        print(goal);
                      },
                    ),
                  ],
                ),
              ],
            ),
            spacesBetween,
            CustomButton(onPressed: () {}, text: LocaleKeys.next.tr()),
          ],
        ),
      ),
    );
  }
}
