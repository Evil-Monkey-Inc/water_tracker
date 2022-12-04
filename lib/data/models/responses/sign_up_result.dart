import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/user.dart';

class SignUpResult {
  final User? user;
  final SignUpException? error;

  SignUpResult(this.user, this.error);
}
