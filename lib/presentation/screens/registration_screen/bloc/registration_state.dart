abstract class RegistrationState {}

class InitialRegistrationState extends RegistrationState {}

class LoadingRegistrationState extends RegistrationState {}

class SuccessfullyRegistrationState extends RegistrationState {}

class ErrorRegistrationState extends RegistrationState {
  ErrorRegistrationState(this.exception);
  final Object exception;
}
