import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_event.dart';
import 'package:water_tracker/presentation/screens/personal_settings_screen/bloc/personal_setting_state.dart';

class PersonalSettingBloc extends Bloc<PersonalSettingEvent, PersonalSettingState> {
  final Repository repository;

  PersonalSettingBloc(this.repository) : super(InitialSettingScreenState()) {
    on<SaveGeneralSettingEvent>((event, emit) async {
      try {
        emit(SavingPersonalSettingState());
        await repository.saveGeneralInfo(event.sex, event.age, event.weight);
        emit(SuccessfullyPersonalSettingState());
      } catch (e) {
        emit(ErrorPersonalSettingState(e));
      }
    });
  }
}
