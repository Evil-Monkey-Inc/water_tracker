abstract class GoalState {}

class InitialGoalState extends GoalState {}

class SavingGoalState extends GoalState {}

class SuccessfullyGoalState extends GoalState {}

class SuccessfullySkipButtonState extends GoalState {}

class ErrorGoalState extends GoalState {
  ErrorGoalState(this.exception);
  final Object exception;
}
