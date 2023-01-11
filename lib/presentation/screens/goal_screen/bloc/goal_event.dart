import 'package:water_tracker/data/models/goal.dart';

abstract class GoalEvent {}

class SaveGoalEvent extends GoalEvent {
  SaveGoalEvent({required this.goals, required this.email});
  final String email;
  final List<Goal> goals;
}
