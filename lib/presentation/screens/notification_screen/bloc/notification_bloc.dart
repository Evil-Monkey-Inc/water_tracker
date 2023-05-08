import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_event.dart';
import 'package:water_tracker/presentation/screens/notification_screen/bloc/notification_state.dart';

class NotificationScreenBloc
    extends Bloc<NotificationEvent, NotificationState> {
  NotificationScreenBloc(this.repository) : super(InitialNotificationState()) {
    on<SkipNotificationEvent>(
          (event, emit) async => emit(SuccessfullySkipButtonState()),
    );
    on<SetupNotificationEvent>((event, emit) async {
       try{
         await repository.initNotification();
         emit(InitialNotificationState());
       }
       catch(e){
         emit(ErrorNotificationState(e));
       }
      },
    );
    on<ShowNotificationEvent>((event, emit) async {
      try {
        await repository.showNotification(
          id: event.id,
          title: event.title,
          body: event.body,
          payload: event.payload,
        );
        emit(SuccessfullyShowNotificationState());
        } catch (e) {
          emit(ErrorNotificationState(e));
        }
      },
    );
  }
  final Repository repository;
}
