import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/user.dart';

class SingInResult {
  final User? user;
  final SignUpException? error;

  SingInResult(this.user, this.error);
}
