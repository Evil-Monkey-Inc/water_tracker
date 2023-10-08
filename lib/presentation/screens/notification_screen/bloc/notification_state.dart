abstract class NotificationState {}

class InitialNotificationState extends NotificationState {}

class SuccessfullyShowNotificationState extends NotificationState {}

class SuccessfullySkipButtonState extends NotificationState {}

class ErrorNotificationState extends NotificationState {
  ErrorNotificationState(this.error);

  final Object error;
}