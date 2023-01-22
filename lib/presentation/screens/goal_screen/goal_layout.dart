import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/models/goal.dart';
import 'package:water_tracker/data/models/goal_widget_model.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_bloc.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_event.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_state.dart';
import 'package:water_tracker/presentation/screens/goal_screen/goal_screen.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/goal_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';

class GoalLayout extends StatefulWidget {
  const GoalLayout({super.key});

  @override
  State<GoalLayout> createState() => _GoalLayoutState();
}

class _GoalLayoutState extends State<GoalLayout> {
  Set<Goal> selectedGoals = {};

  static const spaces = SizedBox(height: 14);
  static const spacesBetween = SizedBox(height: 16);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const upperFlex = 3;
  static const downFlex = 1;
  static const axisSpacing = 16.0;
  static const crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<GoalBloc, GoalState>(
          listener: (context, state) {
            if (state is SuccessfullyGoalState) {
              Navigator.of(context).pushNamedAndRemoveUntil(GoalScreen.navigationPath, (Route<dynamic> route) => false);
            }
            if (state is ErrorGoalState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(LocaleKeys.failed_store.tr())));
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                spaces,
                NameAndSkipWidget(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(GoalScreen.navigationPath, (Route<dynamic> route) => false);
                  },
                ),
                spaces,
                TitleSettingWidget(
                  LocaleKeys.what_is_your_goal.tr(),
                  upperFlex: upperFlex,
                  downFlex: downFlex,
                ),
                spacesBetween,
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: axisSpacing,
                    crossAxisSpacing: axisSpacing,
                    crossAxisCount: crossAxisCount,
                    children: Goal.values
                        .map(
                          (goal) => GoalWidget(
                            onChanged: (_, isSelected) => setState(
                              () => isSelected ? selectedGoals.add(goal) : selectedGoals.remove(goal),
                            ),
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
                CustomButton(
                  onPressed: () {
                    context.read<GoalBloc>().add(SaveGoalEvent(selectedGoals.toList()));
                    Navigator.of(context).pushNamedAndRemoveUntil(GoalScreen.navigationPath, (Route<dynamic> route) => false);
                  },
                  text: LocaleKeys.next.tr(),
                  buttonColor: CustomTheme.buttonDarkColor,
                  textButtonColor: CustomTheme.decorationColor,
                ),
                spaces,
              ],
            );
          },
        ),
      ),
    );
  }
}
