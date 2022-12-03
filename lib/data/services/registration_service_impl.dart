import 'package:firebase_auth/firebase_auth.dart';
import 'package:water_tracker/data/services/registration_service.dart';

class RegistrationServiceFirebaseImpl extends RegistrationService {
  final firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> registerUser(String email, String password) async {
    firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
