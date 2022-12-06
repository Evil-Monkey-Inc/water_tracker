abstract class SignInState {}

class InitialSignInState extends SignInState {}

class LoadingSignInState extends SignInState {}

class SuccessfullySingInState extends SignInState {}

class ErrorSignInState extends SignInState {
  ErrorSignInState(this.exception);
  final Object exception;
}
