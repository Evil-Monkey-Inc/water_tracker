import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/goal_widget_model.dart';
import 'package:water_tracker/data/models/goals.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_bloc.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_event.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_state.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/goal_widget.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class GoalLayout extends StatefulWidget {
  const GoalLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const spacesBetween = SizedBox(height: 16);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const spacesBetweenGoal = SizedBox(width: 16);
  static const paddingTop = EdgeInsets.only(top: 16);
  static const upperFlex = 3;
  static const downFlex = 1;
  static const mainAxisSpacing = 16;
  static const crossAxisSpacing = 16;
  static const crossAxisCount = 2;

  @override
  State<GoalLayout> createState() => _GoalLayoutState();
}

class _GoalLayoutState extends State<GoalLayout> {
  var goals = Goals.drinkWater;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: GoalLayout.paddingHorizontal,
        child: BlocConsumer<GoalBloc, GoalState>(
          listener: (context, state) {
            if (state is SuccessfullyGoalState) {
              // TODO: CHANGE TO NAVIGATE SCREEN
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen()));
            }
            if (state is ErrorGoalState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(LocaleKeys.failed_store.tr())));
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GoalLayout.spaces,
                NameAndSkipWidget(
                  onPressed: () {},
                ),
                GoalLayout.spaces,
                TitleSettingWidget(
                  LocaleKeys.what_is_your_goal.tr(),
                  upperFlex: GoalLayout.upperFlex,
                  downFlex: GoalLayout.downFlex,
                ),
                GoalLayout.spaces,
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: GoalLayout.mainAxisSpacing.toDouble(),
                    crossAxisSpacing: GoalLayout.crossAxisSpacing.toDouble(),
                    crossAxisCount: GoalLayout.crossAxisCount,
                    children: Goals.values
                        .map(
                          (goal) => GoalWidget(
                            onChanged: (_) {
                              setState(() {
                                goals = goal;
                                print(goals);
                              });
                            },
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
                GoalLayout.spacesBetween,
                CustomButton(
                  onPressed: () => context.read<GoalBloc>().add(SaveGoalEvent(goals)),
                  text: LocaleKeys.next.tr(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
