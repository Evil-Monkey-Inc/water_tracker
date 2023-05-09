class ResetPasswordState{}

class InitialResetPasswordState extends ResetPasswordState {}

class LoadingResetPasswordState extends ResetPasswordState {}

class SuccessfullyResetPasswordState extends ResetPasswordState {}

class ErrorResetPasswordState extends ResetPasswordState {
  ErrorResetPasswordState(this.exception);
  final Object exception;
}