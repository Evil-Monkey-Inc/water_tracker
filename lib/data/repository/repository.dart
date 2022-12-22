import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class Repository {
  Future<bool> registerUser(
    String email,
    String password,
  );

  Future<bool> loginUser(
    String email,
    String password,
  );

  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalList goalsList);

  Future<String?> getGoal();

  Future<bool> saveCupCount(int counterCups);

  Future<int?> getCupCount();
}
