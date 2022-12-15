import 'package:water_tracker/data/models/goal_list.dart';

abstract class GoalEvent {}

class SaveGoalEvent extends GoalEvent {
  SaveGoalEvent(this.goalsList);
  final GoalsList goalsList;
}
