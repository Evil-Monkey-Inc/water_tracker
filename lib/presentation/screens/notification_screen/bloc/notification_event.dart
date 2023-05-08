abstract class NotificationEvent{}

class SkipNotificationEvent extends NotificationEvent{}

class SetupNotificationEvent extends NotificationEvent{}

class ShowNotificationEvent extends NotificationEvent{
  ShowNotificationEvent(this.id, this.title, this.body, this.payload);

  final int id;
  final String title;
  final String body;
  final String payload;
}