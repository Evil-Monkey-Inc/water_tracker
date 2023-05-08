import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class SharedPreffStorageService {
  Future<String?> getGoal();

  Future<String?> getUserInfo();

  Future<int?> getCupCount(String dateKey);

  Future<bool> saveGoal(GoalList goalsList);

  Future<void> saveGoogleInfo(String email);

  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<void> saveUserInfo(String email, String? username);

  Future<bool> saveCupCount(String dateKey, int counterCups);
}
