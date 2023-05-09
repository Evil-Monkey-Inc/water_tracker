import 'package:cron/cron.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:water_tracker/data/services/notification_service/notification_service.dart';
import 'dart:async';

class FlutterLocaleNotificationImpl extends NotificationService{
  final notificationPlugin = FlutterLocalNotificationsPlugin();

  final cronPlugin = Cron();
  
  static const channelID = 'channelID';
  static const channelName = 'channelName';

  static const everyHourPeriod = '0 */1 * * *';
  static const everyTwoHourPeriod = '0 */2 * * *';

  var scheduledTimeOneHour = DateTime.now().add(const Duration(hours: 1));
  var scheduledTimeTwoHours = DateTime.now().add(const Duration(hours: 2));

  @override
  Future<void> initNotification() async {
   const androidInitSetting = AndroidInitializationSettings("notification_logo");
   const initializeSetting = InitializationSettings(android: androidInitSetting);

    await notificationPlugin.initialize(initializeSetting,
        onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) async {},
    );
  }

  NotificationDetails notificationDetails(){
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        channelID,
        channelName,
        importance: Importance.max,
      ),
    );
  }

  @override
  Future<void> showNotificationEveryHour({
    required id,
    required String title,
    required String body,
    required String payload,
  }) async {
    cronPlugin.schedule(Schedule.parse(everyHourPeriod),() {
      return notificationPlugin.schedule(
        id,
        title,
        body,
        scheduledTimeOneHour,
        notificationDetails(),
      );
    });
  }

  @override
  Future<void> showNotificationEveryTwoHours({
    required id,
    required String title,
    required String body,
    required String payload,
  }) async {
    cronPlugin.schedule(Schedule.parse(everyTwoHourPeriod),() {
      return notificationPlugin.schedule(
        id,
        title,
        body,
        scheduledTimeOneHour,
        notificationDetails(),
      );
    });
  }
}