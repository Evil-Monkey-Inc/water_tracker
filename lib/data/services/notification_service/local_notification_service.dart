import 'dart:async';

abstract class LocalNotificationService {
  Future<void> showNotificationWithEveryHour({
    required int id,
    required String title,
    required String body,
    required String payload,
  });
}
