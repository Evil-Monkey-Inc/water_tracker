import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class SharedPreffStorageService {
  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalList goalsList);

  Future<String?> getGoal();

  Future<bool> saveCupCount(String dateKey, int counterCups);

  Future<int?> getCupCount(String dateKey);
}
