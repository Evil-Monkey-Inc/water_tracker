import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:water_tracker/data/services/notification_service/notification_service.dart';

class FlutterLocaleNotificationImpl extends NotificationService{
  final notificationPlugin = FlutterLocalNotificationsPlugin();

  static const channelID = 'channelID';
  static const channelName = 'channelName';

  @override
  Future<void> initNotification() async {
   final androidInitSetting = AndroidInitializationSettings("notification_logo");
   final initializeSetting = InitializationSettings(android: androidInitSetting);

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
  Future<void> showNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  }) async {
     return notificationPlugin.show(id, title, body, notificationDetails());
  }
}