abstract class MainScreenEvent {}

class SaveCounterEvent extends MainScreenEvent {
  SaveCounterEvent(this.email);
  final String email;
}

class AppLaunchEvent extends MainScreenEvent {}
