abstract class SignInState {}

class InitialSignInState extends SignInState {}

class LoadingSignInState extends SignInState {}

class SuccessfullySignInState extends SignInState {}

class ErrorSignInState extends SignInState {
  ErrorSignInState(this.exception);
  final Object exception;
}
