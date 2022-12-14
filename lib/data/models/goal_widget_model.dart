import 'package:water_tracker/data/models/goals.dart';

class GoalWidgetModel {
  final String title;
  final Goals goal;
  final String imagePath;

  GoalWidgetModel({
    required this.title,
    required this.goal,
    required this.imagePath,
  });
}
