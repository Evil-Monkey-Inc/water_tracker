import 'package:water_tracker/data/models/goals.dart';

abstract class GoalEvent {}

class SaveGoalEvent extends GoalEvent {
  SaveGoalEvent(this.goals);
  final Goals goals;
}
