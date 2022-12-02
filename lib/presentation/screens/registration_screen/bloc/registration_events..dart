abstract class RegistrationEvent {}

class RegistrationUserEvent extends RegistrationEvent {
  RegistrationUserEvent(this.password, this.email);
  final String password;
  final String email;
}
