import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class StorageService {
  static const usersKey = 'users';
  static const userSettingsKey = 'userSettings';
  static const userCountKey = 'userCount';
  static const amountOfWaterDrunkKey = 'amountOfWaterDrunk';

  Future<bool> saveUserSetting(String email, UserSettings userSettings);

  Future<bool> saveUserGoal(String email, GoalList goalsList);

  Future<bool> saveUserCount(String email, String dateKey, int counterCups);

  Future<int?> getUserCount(String email, String dateKey);
}
