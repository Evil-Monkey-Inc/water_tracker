import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

import 'local_notification_service.dart';

class LocalNotificationServiceImpl extends LocalNotificationService {
  LocalNotificationServiceImpl() {
    _initialize();
  }

  static const waterTrackerNotification = 'water_tracker_notifications';
  static const drinkMoreWater = 'water_tracker_notifications';
  static const channelDescriptionText = 'manage_your_water_balance';

  static const _androidInitializationSettings = AndroidInitializationSettings('mipmap/notification_logo');
  static const _initializationSettings = InitializationSettings(android: _androidInitializationSettings);

  static const _androidNotificationDetails = AndroidNotificationDetails(
    drinkMoreWater,
    waterTrackerNotification,
    channelDescription: channelDescriptionText,
    importance: Importance.max,
    priority: Priority.max,
    playSound: true,
  );
  static const _notificationDetails = NotificationDetails(android: _androidNotificationDetails);

  final _localNotificationService = FlutterLocalNotificationsPlugin();

  final _initializationCompleter = Completer();

  Future<void> _initialize() async {
    await _localNotificationService.initialize(_initializationSettings);
    _initializationCompleter.complete();
  }

  Future<void> _ensureInitialized() async {
    if (!_initializationCompleter.isCompleted) await _initializationCompleter.future;
  }

  @override
  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    await _ensureInitialized();
    return _localNotificationService.periodicallyShow(
      id,
      title,
      body,
      payload: payload,
      RepeatInterval.hourly,
      _notificationDetails,
      androidAllowWhileIdle: true,
    );
  }

  @override
  Future<void> showScheduledLocalNotification({
    required int id,
    required String title,
    required String body,
    required String payload,
    required DateTime scheduledDate,
  }) async {
    return _localNotificationService.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(scheduledDate, tz.local),
      _notificationDetails,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }
}
