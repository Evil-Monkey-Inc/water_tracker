import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_event.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_state.dart';

class PersonalSettingBloc extends Bloc<PersonalSettingEvent, PersonalSettingState> {
  PersonalSettingBloc(this.repository) : super(InitialSettingScreenState()) {
    on<SaveGeneralSettingEvent>((event, emit) async {
      try {
        emit(SavingPersonalSettingState());
        final settings = UserSettings(gender: event.sex, age: event.age, weight: event.weight);
        final isSuccess = await repository.saveGeneralInfo(settings);
        emit(isSuccess ? SuccessfullyPersonalSettingState() : ErrorPersonalSettingState(Exception()));
      } catch (e) {
        emit(ErrorPersonalSettingState(e));
      }
    });
  }
  final Repository repository;
}
