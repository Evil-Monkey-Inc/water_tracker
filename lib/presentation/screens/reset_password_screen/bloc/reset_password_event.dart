abstract class ResetPasswordEvent{}

class LoadingResetPasswordEvent extends ResetPasswordEvent{}

class ForgotPasswordEvent extends ResetPasswordEvent{
  ForgotPasswordEvent(this.email);
  final String email;
}