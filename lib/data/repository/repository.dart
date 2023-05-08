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

  Future<String?> getUserInfo();

  Future<String?> getAccessToken();

  Future<int?> getCupCount(DateTime time);

  Future<bool> saveGoal(GoalList goalsList);

  Future<bool> saveCupCount(int counterCups);

  Future<bool> signInWithGoogle(String email);

  Future<bool> saveGeneralInfo(UserSettings userSettings);
}
