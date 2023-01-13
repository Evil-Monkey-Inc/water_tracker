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

  Future<bool> saveGeneralInfo(String email, UserSettings userSettings);

  Future<bool> saveGoal(String email, GoalList goalsList);


  Future<bool> saveCupCount(String email, int counterCups);

  Future<int?> getCupCount(String email,  DateTime time);
}
