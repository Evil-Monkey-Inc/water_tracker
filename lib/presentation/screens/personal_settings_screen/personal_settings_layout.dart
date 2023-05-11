import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/goal_screen/goal_screen.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_slider_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/select_sex_button.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_bloc.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_event.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_state.dart';

class PersonalSettingsLayout extends StatefulWidget {
  const PersonalSettingsLayout({super.key});

  @override
  State<PersonalSettingsLayout> createState() => _PersonalSettingsLayoutState();
}

class _PersonalSettingsLayoutState extends State<PersonalSettingsLayout> {
  Gender gender = Gender.male;

  int age = minValueAge;
  int weight = minValueWeight;

  static const downFlex = 1;
  static const upperFlex = 3;
  static const fontSize = 16.0;
  static const minValueAge = 5;
  static const maxValueAge = 100;
  static const minValueWeight = 24;
  static const maxValueWeight = 150;
  static const spaces = SizedBox(height: 14);
  static const longSpaces = SizedBox(height: 48.0);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<PersonalSettingBloc, PersonalSettingState>(
          listener: (BuildContext context, state) {
            if (state is SuccessfullyPersonalSettingState) {
              Navigator.of(context).pushNamed(GoalScreen.route);
            }
            if (state is SuccessfullySkipButtonState) {
              Navigator.of(context).pushNamed(GoalScreen.route);
            }
            if (state is ErrorPersonalSettingState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    LocaleKeys.please_fill_in_general_information.tr(),
                  ),
                ),
              );
            }
          },
          builder: (BuildContext context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  spaces,
                  NameAndSkipWidget(
                    onPressed: () => context.read<PersonalSettingBloc>().add(SkipPersonalSettingScreenEvent()),
                  ),
                  spaces,
                  TitleSettingWidget(
                    LocaleKeys.tell_more_general_info.tr(),
                    upperFlex: upperFlex,
                    downFlex: downFlex,
                  ),
                  longSpaces,
                  SelectSexButton(
                    onChanged: (value) {
                      setState(() {
                        gender = value as Gender;
                      });
                    },
                    firstTabTitle: LocaleKeys.man.tr(),
                    secondTabTitle: LocaleKeys.woman.tr(),
                    aboutTabBar: LocaleKeys.sex.tr(),
                    data: gender,
                  ),
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => age = value),
                    sliderNameAndProperty: Text(
                      LocaleKeys.age.tr(),
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: fontSize,
                          ),
                    ),
                    maxValue: maxValueAge,
                    minValue: minValueAge,
                  ),
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => weight = value),
                    sliderNameAndProperty: Text(
                      LocaleKeys.weight.tr(),
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: fontSize,
                          ),
                    ),
                    maxValue: maxValueWeight,
                    minValue: minValueWeight,
                  ),
                  spaces,
                  CustomButton(
                    text: LocaleKeys.next.tr(),
                    onPressed: () => context.read<PersonalSettingBloc>().add(
                          SaveGeneralSettingEvent(
                            sex: gender,
                            age: age,
                            weight: weight,
                          ),
                        ),
                    buttonColor: Theme.of(context).primaryColor,
                    textButtonColor: Theme.of(context).primaryColorLight,
                  ),
                  spaces,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
