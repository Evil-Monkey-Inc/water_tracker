abstract class MainScreenState {
  const MainScreenState(this.counter);

  final int counter;
}

class CounterState extends MainScreenState {
  CounterState(super.counter);
}

class ProcessingLogOutUser extends MainScreenState {
  ProcessingLogOutUser(super.counter, this.isLogOutUser);

  final bool isLogOutUser;
}

class ErrorMainScreenState extends MainScreenState {
  ErrorMainScreenState(super.counter);
}
