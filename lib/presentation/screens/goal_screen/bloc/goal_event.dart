import 'package:water_tracker/data/models/goal.dart';

abstract class GoalEvent {}

class SaveGoalEvent extends GoalEvent {
  SaveGoalEvent(this.goals);
  final List<Goal> goals;
}

class SkipGoalScreenEvent extends GoalEvent {}
