import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_screen_event.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_screen_state.dart';

class NotificationScreenBloc
    extends Bloc<NotificationScreenEvent, NotificationScreenState> {
  NotificationScreenBloc() : super(InitialNotificationState()) {
    on<SkipNotificationScreenEvent>(
      (event, emit) async => emit(SuccessfullySkipButtonState()),
    );
  }
}
