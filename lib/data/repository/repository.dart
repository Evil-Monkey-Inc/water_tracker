import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class Repository {
  Future<SignUpResult> registerUser(
    String email,
    String password,
  );

  Future<bool> loginUser(
    String email,
    String password,
  );

  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalList goalsList);

  Future<bool> saveCupCount(int counterCups);

  Future<int?> getCupCount(DateTime time);

  Future<void> saveAccessToken(String accessToken);

  Future<String?> getAccessToken();
}
