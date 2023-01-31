import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service.dart';

class SharedPreffStorageImplements extends SharedPreffStorageService {

  static const amountOfWaterDrunkKey = 'amountOfWaterDrunk';
  static const userCountKey = 'userCount';


  static const exceptionMessage = 'email could not be null at this point';
  final List<String> userInfo = [];

  @override
  Future<bool> saveUserSetting(String email, UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(
      email,
      jsonEncode(userSettings),
    );

    final encodeMap = prefs.getString(email);
    userInfo.add(encodeMap!);

    return result;
  }

  @override
  Future<bool> saveUserGoal(String email, GoalList goalsList) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(email, jsonEncode(goalsList));
    final encodeMap = prefs.getString(email);
    userInfo.add(encodeMap!);
    final result = await prefs.setStringList(email, userInfo);
    return result;
  }

  @override
  Future<bool> saveUserCount(String email, String dateKey, int counterCups) async {
    final prefs = await SharedPreferences.getInstance();
    final cupsMap = {dateKey : counterCups};
    final fullNestingMap = {userCountKey : cupsMap};
    final result = await prefs.setString(amountOfWaterDrunkKey, jsonEncode(fullNestingMap));
    return result;
  }

  @override
  Future<int?> getUserCount(String email, String dateKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(dateKey) ?? 0;
  }
}
