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

  Future<bool> resetPassword(String email);

  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalList goalsList);

  Future<bool> saveCupCount(int counterCups);

  Future<int?> getCupCount(DateTime time);

  Future<String?> getAccessToken();

  Future<String?> getUserInfo();

  Future<void> initNotification();

  Future<void> showOneHourNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  });

  Future<void> showTwoHoursNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  });
}
