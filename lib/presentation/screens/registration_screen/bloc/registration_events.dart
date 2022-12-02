abstract class RegistrationEvent {}

class CreateUserEvent extends RegistrationEvent {
  CreateUserEvent(this.password, this.email);
  final String password;
  final String email;
}
