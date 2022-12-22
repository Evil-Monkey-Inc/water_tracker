abstract class MainScreenState {}

class InitialMainScreenState extends MainScreenState {}

class CounterState extends MainScreenState {
  CounterState({required this.counter});
  final int counter;
}

class ErrorMainScreenState extends MainScreenState {
  ErrorMainScreenState(this.exception);
  final Object exception;
}
