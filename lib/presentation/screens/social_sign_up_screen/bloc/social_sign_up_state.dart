abstract class SocialSignUpState {}

class InitialAuthState extends SocialSignUpState {}

class LoadingAuthState extends SocialSignUpState {}

class SuccessfullyAuthState extends SocialSignUpState {}

class ErrorAuthState extends SocialSignUpState {
  ErrorAuthState(this.exception);

  final Object exception;
}
