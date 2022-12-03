import 'package:firebase_auth/firebase_auth.dart';
import 'package:water_tracker/data/services/registration_service.dart';

class RegistrationServiceFirebaseImpl extends RegistrationService {
  final credential = FirebaseAuth.instance;

  @override
  Future<void> registerUser(String password, String email) async {
    credential.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
