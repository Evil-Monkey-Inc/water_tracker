import 'package:water_tracker/data/models/goal.dart';

abstract class GoalEvent {}

class SaveGoalEvent extends GoalEvent {
  SaveGoalEvent({required this.goals});
  final List<Goal> goals;
}
