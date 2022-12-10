abstract class PersonalSettingState {}

class InitialSettingScreenState extends PersonalSettingState {}

class SavingPersonalSettingState extends PersonalSettingState {}

class SuccessfullyPersonalSettingState extends PersonalSettingState {}

class ErrorPersonalSettingState extends PersonalSettingState {
  ErrorPersonalSettingState(this.exception);
  final Object exception;
}
