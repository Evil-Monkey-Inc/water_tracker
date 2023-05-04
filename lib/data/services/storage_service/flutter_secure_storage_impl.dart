import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:water_tracker/data/services/storage_service/secure_storage.dart';

class FlutterSecureStorageImpl extends SecureStorageService{
  static const _accessTokenKey = "access_token";
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  Future<String?> getAccessToken() async {
   return await _secureStorage.read(key: _accessTokenKey);
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _secureStorage.write(
      key: _accessTokenKey,
      value: accessToken,
    );
  }
}