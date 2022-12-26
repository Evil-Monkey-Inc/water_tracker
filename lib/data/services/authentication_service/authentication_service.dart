import 'package:water_tracker/data/models/responses/sign_in_result.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user.dart';

abstract class AuthenticationService {
  Future<SignUpResult> registerUser(
    String email,
    String password,
  );

  Future<SignInResult> loginUser(
    String email,
    String password,
  );
}

class MockedAuthenticationServiceImpl extends AuthenticationService {
  @override
  Future<SignUpResult> registerUser(String email, String password) async => SignUpResult(User(''), null);

  @override
  Future<SignInResult> loginUser(String email, String password) async => SignInResult(User(''), null);
}
