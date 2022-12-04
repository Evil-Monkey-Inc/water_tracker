abstract class Repository {
  Future<void> registerUser(
    String email,
    String password,
  );
}
