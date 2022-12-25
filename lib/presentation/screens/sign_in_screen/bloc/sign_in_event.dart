abstract class SignInEvent {}

class SignInUserEvent extends SignInEvent {
  SignInUserEvent(this.email, this.password);
  final String email;
  final String password;
}
