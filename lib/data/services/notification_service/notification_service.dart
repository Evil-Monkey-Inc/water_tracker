abstract class NotificationService{
 Future<void> initNotification();

  Future<void> showNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  });
}