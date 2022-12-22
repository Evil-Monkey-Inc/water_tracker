abstract class MainScreenEvent {}

class IncrementCounterEvent extends MainScreenEvent {}

class SaveCounterEvent extends MainScreenEvent {
  SaveCounterEvent(this.counter);
  final int counter;
}

class AppLaunchEvent extends MainScreenEvent {}
