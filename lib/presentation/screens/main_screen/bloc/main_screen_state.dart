abstract class MainScreenState {
  const MainScreenState(this.counter);

  final int counter;
}

class CounterState extends MainScreenState {
  CounterState(super.counter);
}

class ErrorMainScreenState extends MainScreenState {
  ErrorMainScreenState(super.counter);
}
