import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImplements extends StorageService {
  static const userSettingsKey = 'userSettings';
  static const goalsListKey = 'goalsListKey';
  static const counterCupsKey = 'counterCupsKey';

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(userSettingsKey, jsonEncode(userSettings.toJson()));

    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(goalsListKey, jsonEncode(goalsList.toJson()));
    return result;
  }

  @override
  Future<String?> getGoal() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(goalsListKey);
  }

  @override
  Future<bool> saveCupCount(int counterCups) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setInt(counterCupsKey, counterCups);
    return result;
  }

  @override
  Future<int?> getCupCount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(counterCupsKey) ?? 0;
  }
}
