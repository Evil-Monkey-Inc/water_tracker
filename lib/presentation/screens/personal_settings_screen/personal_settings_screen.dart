import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/get_it.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_bloc.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/personal_settings_layout.dart';

class PersonalSettingScreen extends StatelessWidget {
  const PersonalSettingScreen({super.key});

  static const route = 'personal_settings_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonalSettingBloc>(
      create: (context) => PersonalSettingBloc(getIt<Repository>()),
      child: const PersonalSettingsLayout(),
    );
  }
}
