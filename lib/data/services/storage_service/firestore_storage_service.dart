import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class FireStoreStorageService{
  Future<void> saveUserInfo(String email, UserSettings userSettings);

  Future<void> saveUserGoal(String email, GoalList goalsList);

  Future<void> saveUserCount(String email, int counterCups);
}