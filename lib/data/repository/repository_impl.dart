import 'dart:convert';

import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/data/services/storage_service/secure_storage.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(
    this.registrationService,
    this.storageService,
    this.secureStorageService,
    this.localeStorage,
  );

  final StorageService storageService;
  final SharedPreffStorageService localeStorage;
  final AuthenticationService registrationService;
  final SecureStorageService secureStorageService;

  final counterCupsDateFormat = DateFormat('dd.MM.yyyy');

  String? _userEmail;

  String get userEmail {
    if (_userEmail == null)
      throw Exception('email could not be null at this point');
    return _userEmail!;
  }

  set userEmail(String value) {
    _userEmail = value;
  }

  @override
  Future<bool> registerUser(String email, String password) async {
    final result = await registrationService.registerUser(email, password);
    final isSuccessful = result.error == null;
    if (isSuccessful) {
      userEmail = result.user!.email;
      await localeStorage.saveUserInfo(userEmail, null);
      await secureStorageService.saveAccessToken(result.token!);
    }
    return isSuccessful;
  }

  @override
  Future<bool> loginUser(String email, String password) async {
    final result = await registrationService.loginUser(email, password);
    final isSuccessful = result.error == null;
    if (isSuccessful) _userEmail = email;
    return isSuccessful;
  }

  @override
  Future<bool> signInWithGoogle() async {
    final result = await registrationService.signInWithGoogle();
    final isSuccessful = result.error == null;
    if (isSuccessful) {
      userEmail = result.user!.email;
      await localeStorage.saveUserInfo(userEmail, null);
      await secureStorageService.saveAccessToken(result.token!);
    }
    return isSuccessful;
  }

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final result =
        await storageService.saveUserSetting(userEmail, userSettings);
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final result = await storageService.saveUserGoal(userEmail, goalsList);
    return result;
  }

  @override
  Future<bool> saveCupCount(int counterCups) async {
    final time = DateTime.now();
    final userInfo = await localeStorage.getUserInfo();
    final savedEmail = jsonDecode(userInfo!) as Map<String, dynamic>;
    final result = await storageService.saveUserCount(
      savedEmail["email"],
      getDateKey(time),
      counterCups,
    );
    return result;
  }

  @override
  Future<int?> getCupCount(DateTime time) async {
    final userInfo = await localeStorage.getUserInfo();
    final savedEmail = jsonDecode(userInfo!) as Map<String, dynamic>;
    return storageService.getUserCount(savedEmail["email"], getDateKey(time));
  }

  String getDateKey(DateTime dateTime) =>
      counterCupsDateFormat.format(dateTime);

  @override
  Future<String?> getAccessToken() async =>
      await secureStorageService.getAccessToken();

  @override
  Future<String?> getUserInfo() async {
    return await localeStorage.getUserInfo();
  }
}
