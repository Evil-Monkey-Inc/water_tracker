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
            Wrap(
              children: [
                GoalWidget(
                  titleGoal: 'Drink more Water',
                  iconImageWidget: IconImageWidget.bottleIconWay(),
                ),
                spacesBetweenGoal,
                GoalWidget(
                  titleGoal: 'Lose weight',
                  iconImageWidget: IconImageWidget.weightIconWay(),
                ),
                spacesBetweenGoal,
                Padding(
                  padding: paddingTop,
                  child: GoalWidget(
                    titleGoal: 'Shine skin',
                    iconImageWidget: IconImageWidget.shineSkinIconWay(),
                  ),
                ),
                spacesBetweenGoal,
                Padding(
                  padding: paddingTop,
                  child: GoalWidget(
                    titleGoal: 'Lead a healthy lifestyle',
                    iconImageWidget: IconImageWidget.lifeStyleIconWay(),
                  ),
                ),
                spacesBetweenGoal,
                Padding(
                  padding: paddingTop,
                  child: GoalWidget(
                    titleGoal: 'Improve digestion',
                    iconImageWidget: IconImageWidget.digestionIconWay(),
                  ),
                ),
                spacesBetweenGoal,
                Padding(
                  padding: paddingTop,
                  child: GoalWidget(
                    titleGoal: 'Other',
                    iconImageWidget: IconImageWidget.otherIconWay(),
                  ),
                ),
              ],
            ),
            spaces,
            CustomButton(onPressed: () {}, text: LocaleKeys.next.tr()),
          ],
        ),
      ),
    );
  }
}
