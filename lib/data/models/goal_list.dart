import 'package:json_annotation/json_annotation.dart';
import 'goal.dart';

part 'goal_list.g.dart';

@JsonSerializable()
class GoalList {
  final List<Goal> goals;
  GoalList({required this.goals});

  factory GoalList.fromJson(Map<String, dynamic> json) => _$GoalListFromJson(json);

  Map<String, dynamic> toJson() => _$GoalListToJson(this);
}
