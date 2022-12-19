abstract class LocalNotificationService {
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
}
