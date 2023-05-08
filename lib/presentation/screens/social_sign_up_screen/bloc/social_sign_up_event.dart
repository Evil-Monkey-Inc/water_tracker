abstract class AuthUserEvent {
  const AuthUserEvent();
}

class LoginWithGooglePressed extends AuthUserEvent {
  LoginWithGooglePressed(this.email);

  final String email;
}
