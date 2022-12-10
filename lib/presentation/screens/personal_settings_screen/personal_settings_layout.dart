import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_bloc.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_event.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_state.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/sign_in_screen.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/name_and_skip_widget.dart';
import 'package:water_tracker/presentation/widgets/select_sex_button.dart';
import 'package:water_tracker/presentation/widgets/title_settings_widget.dart';
import 'package:water_tracker/presentation/widgets/weight_slider_widget.dart';

class PersonalSettingsLayout extends StatefulWidget {
  const PersonalSettingsLayout({Key? key}) : super(key: key);

  static const spaces = SizedBox(height: 24);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  State<PersonalSettingsLayout> createState() => _PersonalSettingsLayoutState();
}

class _PersonalSettingsLayoutState extends State<PersonalSettingsLayout> {
  Gender? gender;
  int? weight;
  int? age;

  bool get isButtonEnabled => weight != null && age != null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PersonalSettingsLayout.paddingHorizontal,
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
                  PersonalSettingsLayout.spaces,
                  NameAndSkipWidget(onPressed: () {}),
                  PersonalSettingsLayout.spaces,
                  TitleSettingWidget(LocaleKeys.tell_more_general_info.tr()),
                  PersonalSettingsLayout.spaces,
                  PersonalSettingsLayout.spaces,
                  SelectSexButton(onChanged: (value) => setState(() => gender = value)),
                  PersonalSettingsLayout.spaces,
                  WeightSliderWidget(onChanged: (value) => setState(() => age = value)),
                  PersonalSettingsLayout.spaces,
                  WeightSliderWidget(onChanged: (value) => setState(() => weight = value)),
                  PersonalSettingsLayout.spaces,
                  CustomButton(
                    isEnabled: isButtonEnabled,
                    text: LocaleKeys.next.tr(),
                    onPressed: () {
                      context.read<PersonalSettingBloc>().add(
                            SaveGeneralSettingEvent(gender.toString(), age!, weight!),
                          );
                    },
                  ),
                  PersonalSettingsLayout.spaces,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
