import 'package:water_tracker/data/models/goal.dart';

class GoalWidgetModel {
  GoalWidgetModel({
    required this.title,
    required this.goal,
    required this.imagePath,
  });
  final String title;
  final Goal goal;
  final String imagePath;
}
