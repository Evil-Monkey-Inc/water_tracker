import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user.dart';
import 'package:water_tracker/data/services/registration_service.dart';

class RegistrationServiceImpl extends RegistrationService {
  final firebaseAuth = auth.FirebaseAuth.instance;

  @override
  Future<SignUpResult> registerUser(String email, String password) async {
    SignUpException? error;
    auth.UserCredential? credential;
    try {
      credential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on auth.FirebaseAuthException catch (e) {
      error = SignUpException.fromFirebaseAuth(e);
    }
    User? user;
    if (credential != null) user = User(email);
    final result = SignUpResult(user, error);
    return result;
  }
}
