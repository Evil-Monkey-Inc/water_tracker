abstract class NotificationEvent{}

class SkipNotificationEvent extends NotificationEvent{}

class SetupNotificationEvent extends NotificationEvent{}

class ShowEveryHourNotificationEvent extends NotificationEvent{
  ShowEveryHourNotificationEvent(this.id, this.title, this.body, this.payload);

  final int id;
  final String title;
  final String body;
  final String payload;
}

class ShowEveryTwoHoursNotificationEvent extends NotificationEvent{
  ShowEveryTwoHoursNotificationEvent(this.id, this.title, this.body, this.payload);

  final int id;
  final String title;
  final String body;
  final String payload;
}