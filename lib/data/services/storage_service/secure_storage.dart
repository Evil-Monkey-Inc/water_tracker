abstract class SecureStorageService{
  Future<void> saveAccessToken(String accessToken);

  Future<String?> getAccessToken();
}