import 'package:json_annotation/json_annotation.dart';
import 'package:water_tracker/data/models/goal.dart';

part 'goal_list.g.dart';

@JsonSerializable()
class GoalList {
  GoalList({required this.goals});

  factory GoalList.fromJson(Map<String, dynamic> json) => _$GoalListFromJson(json);
  final List<Goal> goals;

  Map<String, dynamic> toJson() => _$GoalListToJson(this);
}
