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

  Future<void> showScheduledNotification({
    required int id,
    required String title,
    required String body,
    required int seconds,
  });

  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  });

  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalList goalsList);

  Future<String?> getGoal();
}
