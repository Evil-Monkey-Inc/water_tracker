abstract class SignUpState {}

class InitialSignUpState extends SignUpState {}

class LoadingSignUpState extends SignUpState {}

class SuccessfullySignUpState extends SignUpState {}

class ErrorRegistrationState extends SignUpState {
  ErrorRegistrationState(this.exception);
  final Object exception;
}
