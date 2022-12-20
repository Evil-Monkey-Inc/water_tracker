abstract class NotificationEvent {}

class ShowNotificationEvent extends NotificationEvent {
  ShowNotificationEvent(this.id, this.title, this.body, this.payload, this.time);
  final int id;
  final String title;
  final String body;
  final String payload;
  final DateTime time;
}
