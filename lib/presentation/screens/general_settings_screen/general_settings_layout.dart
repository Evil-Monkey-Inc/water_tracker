import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/data/models/language.dart';
import 'package:water_tracker/data/models/theme.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/main_screen/main_screen.dart';
import 'package:water_tracker/presentation/widgets/atoms/calendar_widget.dart';
import 'package:water_tracker/presentation/widgets/atoms/profile_radio_buttons.dart';
import 'package:water_tracker/presentation/widgets/atoms/title_settings_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/assistant_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/input_field_widget.dart';
import 'package:water_tracker/presentation/widgets/molecules/select_sex_button.dart';

class GeneralSettingsLayout extends StatefulWidget {
  const GeneralSettingsLayout({super.key});

  @override
  State<GeneralSettingsLayout> createState() => _GeneralSettingsLayoutState();
}

class _GeneralSettingsLayoutState extends State<GeneralSettingsLayout> {
  Language language = Language.english;
  ApplicationTheme theme = ApplicationTheme.light;

  final _name = TextEditingController();
  final formKey = GlobalKey<FormState>();

  static const downFlex = 1;
  static const upperFlex = 3;
  static const fontSize = 16.0;
  static const spaces = SizedBox(height: 24.0);
  static const longSpaces = SizedBox(height: 48.0);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          children: [
            spaces,
            AssistantWidget(
              title: CalendarWidget(
                dateTime: LocaleKeys.profile.tr(),
              ),
              iconButton: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MainScreen.route);
                },
                icon: const Icon(Icons.close),
                color: Theme.of(context).primaryColor,
              ),
            ),
            spaces,
            TitleSettingWidget(
              LocaleKeys.manage_your_personal_settings.tr(),
              subTitle: LocaleKeys.we_do_not_share.tr(),
              downFlex: downFlex,
              upperFlex: upperFlex,
            ),
            Row(
              children: [
                Text(
                  LocaleKeys.name.tr(),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize,
                      ),
                ),
              ],
            ),
            spaces,
            Form(
              key: formKey,
              child: InputFieldWidget(
                labelText: LocaleKeys.enter_your_name.tr(),
                validator: FormValidators.nameValidator,
                controller: _name,
                suffixIcon: Icon(
                  const IconData(0xe89b, fontFamily: 'MaterialIcons'),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            spaces,
            SelectSexButton(
              onChanged: (value) {
                setState(() {
                  theme = value;
                });
              },
              firstTabTitle: LocaleKeys.light.tr(),
              secondTabTitle: LocaleKeys.dark.tr(),
              aboutTabBar: LocaleKeys.theme.tr(),
              data: theme,
            ),
            spaces,
            Row(
              children: [
                Text(
                  LocaleKeys.language.tr(),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize,
                      ),
                ),
              ],
            ),
            ProfileRadioButtons(
              onChanged: (value) {
                setState(() {
                  language = value;
                  print(value);
                });
              },
              firstButtonName: LocaleKeys.english.tr(),
              secondButtonName: LocaleKeys.spanish.tr(),
              thirdButtonName: LocaleKeys.ukrainian.tr(),
              data: language,
            ),
            longSpaces,
            CustomButton(
                text: LocaleKeys.submit.tr(),
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                buttonColor: Theme.of(context).primaryColor,
                textButtonColor: Theme.of(context).dialogBackgroundColor),
          ],
        ),
      ),
    );
  }
}
