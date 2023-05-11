import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service.dart';

class SharedPreffStorageImplements extends SharedPreffStorageService {
  static const userSettingsKey = 'userSettings';
  static const goalsListKey = 'goalsListKey';
  static const userInfo = 'userInfoKey';

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(
      userSettingsKey,
      jsonEncode(userSettings.toJson()),
    );
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final prefs = await SharedPreferences.getInstance();
    final result =
        await prefs.setString(goalsListKey, jsonEncode(goalsList.toJson()));
    return result;
  }

  @override
  Future<String?> getGoal() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(goalsListKey);
  }

  @override
  Future<bool> saveCupCount(String dateKey, int counterCups) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setInt(dateKey, counterCups);
    return result;
  }

  @override
  Future<int?> getCupCount(String dateKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(dateKey) ?? 0;
  }

  @override
  Future<void> saveUserInfo(String email, String? username) async {
    final prefs = await SharedPreferences.getInstance();
    final user = User(email, username: username);
    await prefs.setString(userInfo, jsonEncode(user.toJson()));
  }

  @override
  Future<String?> getUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userInfo);
  }

  @override
  Future<void> saveGoogleInfo(String email) async {
    final prefs = await SharedPreferences.getInstance();
    final user = User(email);
    await prefs.setString(userInfo, jsonEncode(user.toJson()));
  }
}
