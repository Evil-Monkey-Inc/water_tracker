import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/user.dart';

class SignUpResult {
  SignUpResult(this.user, this.error);
  final User? user;
  final SignUpException? error;
}
