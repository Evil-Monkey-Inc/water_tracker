import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_event.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final Repository repository;

  NotificationBloc(this.repository) : super(InitialNotificationState()) {
    on<ShowNotificationEvent>((event, emit) async {
      try {
        await repository.showScheduledLocalNotification(
          id: event.id,
          payload: event.payload,
          title: event.title,
          body: event.body,
          scheduledDate: event.time,
        );
      } catch (e) {
        emit(ErrorNotificationState(e));
      }
    });
  }
}
