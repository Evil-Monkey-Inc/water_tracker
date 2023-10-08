import 'package:water_tracker/data/models/responses/sign_in_result.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';

class MockedAuthenticationServiceImpl extends AuthenticationService {
  @override
  Future<SignUpResult> registerUser(String email, String password) async =>
      SignUpResult(User(''), null, null);

  @override
  Future<SignInResult> loginUser(String email, String password) async =>
      SignInResult(User(''), null);

  @override
  Future<SignUpResult> signInWithGoogle() async =>
      SignUpResult(User(''), null, null);
}
