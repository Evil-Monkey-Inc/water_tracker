abstract class Repository {
  Future<bool> registerUser(
    String email,
    String password,
  );
}
