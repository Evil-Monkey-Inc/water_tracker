import 'package:water_tracker/data/models/responses/sign_in_result.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';

abstract class SingUpService {
  Future<SignUpResult> registerUser(
    String email,
    String password,
  );

  Future<SignInResult> loginUser(
    String email,
    String password,
  );
}
