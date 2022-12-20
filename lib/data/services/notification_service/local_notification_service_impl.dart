import 'dart:async';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'local_notification_service.dart';

class LocalNotificationServiceImpl extends LocalNotificationService {
  LocalNotificationServiceImpl() {
    init();
  }

  final notifications = AwesomeNotifications();
  final completer = Completer();

  static const basicChannel = 'basic_channel';
  static const iconPath = 'resource://drawable/app_logo';
  static const channelGroupKey = 'basic_channel_group';
  static const channelKey = 'basic_channel';
  static const channelName = 'Basic notifications';
  static const channelDescription = 'Notification channel for basic tests';
  static const channelGroupName = 'Basic group';

  @override
  Future<void> showNotificationWithEveryHour({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    await completer.future;
    await notifications.cancelAllSchedules();
  }

  void init() async {
    await notifications.initialize(
      iconPath,
      [
        NotificationChannel(
          channelGroupKey: channelGroupKey,
          channelKey: channelKey,
          channelName: channelName,
          channelDescription: channelDescription,
        )
      ],
      channelGroups: [NotificationChannelGroup(channelGroupKey: channelGroupKey, channelGroupName: channelGroupName)],
      debug: true,
    );
    completer.complete();
  }
}
