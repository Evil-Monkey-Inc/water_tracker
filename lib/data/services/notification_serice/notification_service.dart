import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationService {
  LocalNotificationService() {
    _initialize();
  }

  static const _androidInitializationSettings = AndroidInitializationSettings('mipmap/ic_launcher');
  static const _initializationSettings = InitializationSettings(android: _androidInitializationSettings);

  static const _androidNotificationDetails = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    channelDescription: 'description',
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

  Future<void> showScheduledNotification({
    required int id,
    required String title,
    required String body,
    required int seconds,
  }) async {
    await _localNotificationService.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(
        DateTime.now().add(Duration(seconds: seconds)),
        tz.local,
      ),
      _notificationDetails,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> showNotificationWithPayload({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    await _ensureInitialized();
    return _localNotificationService.show(id, title, body, _notificationDetails, payload: payload);
  }
}
