import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/custom_theme.dart';
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
  var gender = Gender.male;
  int weight = minValueWeight;
  int age = minValueAge;

  final sliderWeightTextProperty = Text(LocaleKeys.weight.tr(), style: CustomTheme().header);
  final sliderAgeTextProperty = Text(LocaleKeys.age.tr(), style: CustomTheme().header);
  static const spaces = SizedBox(height: 14);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static const maxValueAge = 100;
  static const minValueAge = 5;
  static const maxValueWeight = 150;
  static const minValueWeight = 24;

  static const upperFlex = 3;
  static const downFlex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<PersonalSettingBloc, PersonalSettingState>(
          listener: (BuildContext context, state) {
            if (state is SuccessfullyPersonalSettingState) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GoalScreen()));
            }

            if (state is ErrorPersonalSettingState) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(LocaleKeys.please_fill_in_general_information.tr())));
            }
          },
          builder: (BuildContext context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  spaces,
                  NameAndSkipWidget(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GoalScreen()));
                    },
                  ),
                  spaces,
                  TitleSettingWidget(
                    LocaleKeys.tell_more_general_info.tr(),
                    upperFlex: upperFlex,
                    downFlex: downFlex,
                  ),
                  spaces,
                  spaces,
                  SelectSexButton(onChanged: (value) => setState(() => gender = value)),
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => age = value),
                    sliderNameAndProperty: sliderAgeTextProperty,
                    maxValue: maxValueAge,
                    minValue: minValueAge,
                  ),
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => weight = value),
                    sliderNameAndProperty: sliderWeightTextProperty,
                    maxValue: maxValueWeight,
                    minValue: minValueWeight,
                  ),
                  spaces,
                  CustomButton(
                    text: LocaleKeys.next.tr(),
                    onPressed: () =>
                        context.read<PersonalSettingBloc>().add(SaveGeneralSettingEvent(gender, age, weight)),
                    buttonColor: CustomTheme.buttonDarkColor,
                    textButtonColor: CustomTheme.decorationColor,
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
