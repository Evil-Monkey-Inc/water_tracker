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
import 'package:water_tracker/presentation/screens/notification_screen/notification_screen.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/goal_widget.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

class GoalLayout extends StatefulWidget {
  const GoalLayout({Key? key}) : super(key: key);

  @override
  State<GoalLayout> createState() => _GoalLayoutState();
}

class _GoalLayoutState extends State<GoalLayout> {
  var goals = Goal.drinkWater;
  List<Goal> goalsList = [];

  static const spaces = SizedBox(height: 24);
  static const spacesBetween = SizedBox(height: 16);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const upperFlex = 3;
  static const downFlex = 1;
  static const mainAxisSpacing = 16;
  static const crossAxisSpacing = 16;
  static const crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<GoalBloc, GoalState>(
          listener: (context, state) {
            if (state is SuccessfullyGoalState) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationScreen()));
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationScreen()));
                  },
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
                    mainAxisSpacing: mainAxisSpacing.toDouble(),
                    crossAxisSpacing: crossAxisSpacing.toDouble(),
                    crossAxisCount: crossAxisCount,
                    children: Goal.values
                        .map(
                          (goal) => GoalWidget(
                            onChanged: (_) {
                              setState(() {
                                goals = goal;
                                goalsList.add(goals);
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
                spacesBetween,
                CustomButton(
                  onPressed: () {
                    context.read<GoalBloc>().add(SaveGoalEvent(goalsList));
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationScreen()));
                  },
                  text: LocaleKeys.next.tr(),
                  buttonColor: CustomTheme.buttonDarkColor,
                  textButtonColor: Colors.white,
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
