import 'package:cron/cron.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/notification_service/local_notification_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';
import 'package:water_tracker/utils/cron_util.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService, this.storageService, this.localNotificationService, this.cronUtil);

  final AuthenticationService registrationService;
  final StorageService storageService;
  final LocalNotificationService localNotificationService;

  final CronUtil cronUtil;

  @override
  Future<bool> registerUser(String email, String password) async {
    final result = await registrationService.registerUser(email, password);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }

  @override
  Future<bool> loginUser(String email, String password) async {
    final result = await registrationService.loginUser(email, password);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final result = await storageService.saveGeneralInfo(userSettings);
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final result = await storageService.saveGoal(goalsList);
    return result;
  }

  @override
  Future<String?> getGoal() async => await storageService.getGoal();

  @override
  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    await localNotificationService.showNotificationWithEveryHour(id: id, title: title, body: body, payload: payload);
  }

  @override
  void setupScheduleNotifications({
    required int durationInHours,
    required int id,
    required String title,
    required String body,
    required String payload,
  }) =>
      cronUtil.schedule(
        Schedule(hours: durationInHours),
        () => localNotificationService.showNotificationWithEveryHour(
          id: id,
          title: title,
          body: body,
          payload: payload,
        ),
      );
}
