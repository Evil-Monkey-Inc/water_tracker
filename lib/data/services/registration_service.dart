import 'package:water_tracker/data/models/responses/sign_up_result.dart';

abstract class RegistrationService {
  Future<SignUpResult> registerUser(
    String email,
    String password,
  );
}
