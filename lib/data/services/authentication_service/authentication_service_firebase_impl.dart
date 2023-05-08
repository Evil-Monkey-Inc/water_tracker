import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:water_tracker/data/models/errors/sign_up_exception.dart';
import 'package:water_tracker/data/models/responses/sign_in_result.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';

class AuthenticationServiceFirebaseImpl extends AuthenticationService {
  final firebaseAuth = auth.FirebaseAuth.instance;

  @override
  Future<SignUpResult> registerUser(String email, String password) async {
    SignUpException? error;
    String? accessToken;
    auth.UserCredential? credential;
    try {
      credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      accessToken = await credential.user?.getIdToken();
    } on auth.FirebaseAuthException catch (e) {
      error = SignUpException.fromFirebaseAuth(e);
    }
    User? user;

    if (credential != null) user = User(email);
    final result = SignUpResult(user, error, accessToken);
    return result;
  }

  @override
  Future<SignInResult> loginUser(String email, String password) async {
    auth.UserCredential? credential;
    SignUpException? error;
    try {
      credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on auth.FirebaseAuthException catch (e) {
      error = SignUpException.fromFirebaseAuth(e);
    }
    User? user;
    if (credential != null) user = User(email);
    final result = SignInResult(user, error);
    return result;
  }

  @override
  Future<SignUpResult> signInWithGoogle() async {
    String? accessToken;
    SignUpException? error;
    auth.UserCredential? credential;

    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    try {
      final GoogleSignInAuthentication gAuth = await gUser!.authentication;
      credential = await auth.FirebaseAuth.instance.signInWithCredential(
        auth.GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        ),
      );
      accessToken = await credential.user?.getIdToken();
    } on auth.FirebaseAuthException catch (e) {
      error = SignUpException.fromFirebaseAuth(e);
    }

    User? user = User(gUser!.email);
    if (credential != null) {
      user = User(gUser.email);
    }
    final result = SignUpResult(user, error, accessToken);
    return result;
  }
}
