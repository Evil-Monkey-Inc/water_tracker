import 'package:json_annotation/json_annotation.dart';

import 'goals.dart';
part 'goal_list.g.dart';

@JsonSerializable()
class GoalsList {
  final Goals goals;
  GoalsList({required this.goals});

  factory GoalsList.fromJson(Map<String, dynamic> json) => _$GoalsListFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsListToJson(this);
}
