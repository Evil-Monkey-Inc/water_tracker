abstract class NotificationService{
 Future<void> initNotification();

  Future<void> showNotificationEveryHour({
    required id,
    required String title,
    required String body,
    required String payload,
  });

 Future<void> showNotificationEveryTwoHours({
   required id,
   required String title,
   required String body,
   required String payload,
 });
}