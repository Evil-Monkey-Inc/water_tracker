import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class SharedPreffStorageImplements extends SharedPreffStorageService {
  @override
  Future<bool> saveUserSetting(String email, UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(
      email,
      jsonEncode(
        {StorageService.userSettingsKey: jsonEncode(userSettings), StorageService.userGoalKey: []},
      ),
    );
    return result;
  }

  @override
  Future<bool> saveUserGoal(String email, GoalList goalsList) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setStringList(StorageService.userGoalKey, [jsonEncode(goalsList)]);
    return result;
  }

  @override
  Future<bool> saveUserCount(String email, String dateKey, int counterCups) async {
    final prefs = await SharedPreferences.getInstance();
    final cupsMap = {dateKey: counterCups};
    final fullNestingMap = {StorageService.userCountKey: cupsMap};
    final result = await prefs.setString(StorageService.amountOfWaterDrunkKey, jsonEncode(fullNestingMap));
    return result;
  }

  @override
  Future<int?> getUserCount(String email, String dateKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(dateKey) ?? 0;
  }
}
