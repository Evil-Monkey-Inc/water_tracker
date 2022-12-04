import 'package:firebase_auth/firebase_auth.dart';

enum SingUpExceptionType {
  emailTaken,
  invalidEmail,
  noPermission,
  weakPassword,
}

class SignUpException {
  final SingUpExceptionType exception;
  final dynamic details;

  SignUpException(this.exception, this.details);

  factory SignUpException.emailTaken([details]) => SignUpException(SingUpExceptionType.emailTaken, details);
  factory SignUpException.invalidEmail([details]) => SignUpException(SingUpExceptionType.invalidEmail, details);
  factory SignUpException.noPermission([details]) => SignUpException(SingUpExceptionType.noPermission, details);
  factory SignUpException.weakPassword([details]) => SignUpException(SingUpExceptionType.weakPassword, details);

  static const _emailAlreadyInUseCode = 'email-already-in-use';
  static const _invalidEmailCode = 'invalid-email';
  static const _operationNotAllowedCOde = 'operation-not-allowed';
  static const _weakPassword = 'weak-password';

  static SignUpException fromFirebaseAuth(FirebaseAuthException exception) {
    if (exception.code == _emailAlreadyInUseCode) return SignUpException.emailTaken();
    if (exception.code == _invalidEmailCode) return SignUpException.emailTaken();
    if (exception.code == _operationNotAllowedCOde) return SignUpException.emailTaken();
    if (exception.code == _weakPassword) return SignUpException.emailTaken();
    throw Exception('We are not processing this type of FirebaseAuthException $exception in fromFirebaseAuth method');
  }
}

extension FirebaseAuthConstructror on SignUpException {}
