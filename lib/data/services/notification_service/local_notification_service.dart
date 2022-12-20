import 'dart:async';
import 'package:awesome_notifications/awesome_notifications.dart';

abstract class LocalNotificationService {
  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  });
}

class AwesomeNotificationImpl implements LocalNotificationService {
  AwesomeNotificationImpl() {
    init();
  }

  final notifications = AwesomeNotifications();

  final completer = Completer();

  @override
  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    await completer.future;
    final content = NotificationContent(title: title, id: id, body: body, channelKey: 'basic_channel');
    final tz = await notifications.getLocalTimeZoneIdentifier();

    final intervalInSeconds = 60;

    final schedule = NotificationCalendar(
      timeZone: tz,
      repeats: true,
      allowWhileIdle: true,
      second: 10,
    );

    final scheduled = await notifications.listScheduledNotifications();

    for (var element in scheduled) {
      print(element);
    }
    await notifications.cancelAllSchedules();
    final result = await notifications.createNotification(
      content: content,
      schedule: schedule,
    );

    print(result);
  }

  void init() async {
    final isInitialized = await notifications.initialize(
      'resource://drawable/app_logo',
      [
        NotificationChannel(
          channelGroupKey: 'basic_channel_group',
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
        )
      ],
      channelGroups: [
        NotificationChannelGroup(channelGroupKey: 'basic_channel_group', channelGroupName: 'Basic group')
      ],
      debug: true,
    );

    completer.complete();
  }
}
