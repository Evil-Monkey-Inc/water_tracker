import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/custom_slider_widget.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/select_sex_button.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';

import 'bloc/personal_setting_bloc.dart';
import 'bloc/personal_setting_event.dart';
import 'bloc/personal_setting_state.dart';

class PersonalSettingsLayout extends StatefulWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  @override
  State<PersonalSettingsLayout> createState() => _PersonalSettingsLayoutState();
}

class _PersonalSettingsLayoutState extends State<PersonalSettingsLayout> {
  Gender? gender;
  int? weight;
  int? age;

  final sliderWeightTextProperty = Text(LocaleKeys.weight.tr(), style: const TextStyle(fontSize: 20));
  final sliderAgeTextProperty = Text(LocaleKeys.age.tr(), style: const TextStyle(fontSize: 20));
  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  bool get isButtonEnabled => weight != null && age != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: BlocConsumer<PersonalSettingBloc, PersonalSettingState>(
          listener: (BuildContext context, state) {
            if (state is SuccessfullyPersonalSettingState) {
              // TODO: CHANGE THE SCREEN
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen()));
            }
          },
          builder: (BuildContext context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  spaces,
                  NameAndSkipWidget(onPressed: () {}),
                  spaces,
                  TitleSettingWidget(LocaleKeys.tell_more_general_info.tr()),
                  spaces,
                  spaces,
                  SelectSexButton(onChanged: (value) => setState(() => gender = value)),
                  spaces,
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => age = value),
                    sliderNameAndProperty: sliderWeightTextProperty,
                    maxValue: 100,
                  ),
                  spaces,
                  CustomSliderWidget(
                    onChanged: (value) => setState(() => weight = value),
                    sliderNameAndProperty: sliderWeightTextProperty,
                    maxValue: 150,
                  ),
                  spaces,
                  CustomButton(
                    text: LocaleKeys.next.tr(),
                    onPressed: () {
                      context
                          .read<PersonalSettingBloc>()
                          .add(SaveGeneralSettingEvent(gender.toString(), age!, weight!));
                    },
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
