import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/user.dart';

class SignInResult {
  final User? user;
  final SignUpException? error;

  SignInResult(this.user, this.error);
}
