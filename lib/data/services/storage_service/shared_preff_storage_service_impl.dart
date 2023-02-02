import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

typedef UserMap = Map<String, dynamic>;

class SharedPreffStorageImplements extends SharedPreffStorageService {
  @override
  Future<bool> saveUserSetting(String email, UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final UserMap currentMap = jsonDecode(prefs.getString(StorageService.usersKey) ?? '');
    final UserMap userMap = currentMap[email] ?? {};
    userMap[StorageService.userSettingsKey] = userSettings.toJson();
    currentMap[StorageService.usersKey] = userMap;
    final result = await prefs.setString(
      StorageService.usersKey,
      jsonEncode(currentMap),
    );
    return result;
  }

  @override
  Future<bool> saveUserGoal(String email, GoalList goalsList) async {
    final prefs = await SharedPreferences.getInstance();
    final lastValue = prefs.getString(StorageService.usersKey);
    final nestingMap = {
      StorageService.usersKey: {lastValue: goalsList.toJson()}
    };
    final result = await prefs.setString(StorageService.usersKey, jsonEncode(nestingMap));
    return result;
  }

  @override
  Future<bool> saveUserCount(String email, String dateKey, int counterCups) async {
    final prefs = await SharedPreferences.getInstance();
    final cupsMap = {
      StorageService.userCountKey: {
        StorageService.amountOfWaterDrunkKey: {dateKey: counterCups}
      }
    };
    final result = await prefs.setString(email, jsonEncode(cupsMap));

    return result;
  }

  @override
  Future<int?> getUserCount(String email, String dateKey) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(email);
    final decodeValue = json.decode(value!);
    final cupCount = decodeValue[StorageService.userCountKey][StorageService.amountOfWaterDrunkKey][dateKey];

    return prefs.getInt(cupCount) ?? 0;
  }
}
