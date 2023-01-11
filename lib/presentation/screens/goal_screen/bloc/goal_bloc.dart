import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_event.dart';
import 'package:water_tracker/presentation/screens/goal_screen/bloc/goal_state.dart';

class GoalBloc extends Bloc<GoalEvent, GoalState> {
  GoalBloc(this.repository) : super(InitialGoalState()) {
    on<SaveGoalEvent>((event, emit) async {
      try {
        emit(SavingGoalState());
        final goals = GoalList(goals: event.goals);
        await repository.saveUserGoal(event.email, goals);
        final isSuccess = await repository.saveGoal(goals);
        emit(isSuccess ? SuccessfullyGoalState() : ErrorGoalState(Exception()));
      } catch (e) {
        emit(ErrorGoalState(e));
      }
    });
  }
  final Repository repository;
}
