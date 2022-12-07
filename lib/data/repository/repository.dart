abstract class Repository {
  Future<bool> registerUser(
    String email,
    String password,
  );

  Future<bool> loginUser(
    String email,
    String password,
  );
}
