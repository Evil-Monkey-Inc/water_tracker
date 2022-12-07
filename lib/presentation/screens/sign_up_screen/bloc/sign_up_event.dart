abstract class SignUpEvent {}

class CreateUserEvent extends SignUpEvent {
  CreateUserEvent(this.password, this.email);
  final String email;
  final String password;
}
