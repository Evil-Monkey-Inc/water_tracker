// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalsList _$GoalsListFromJson(Map<String, dynamic> json) => GoalsList(
      goals: $enumDecode(_$GoalsEnumMap, json['goals']),
    );

Map<String, dynamic> _$GoalsListToJson(GoalsList instance) => <String, dynamic>{
      'goals': _$GoalsEnumMap[instance.goals]!,
    };

const _$GoalsEnumMap = {
  Goals.drinkWater: 'drinkWater',
  Goals.loseWeight: 'loseWeight',
  Goals.shineSkin: 'shineSkin',
  Goals.healthyLifeStyle: 'healthyLifeStyle',
  Goals.improveDigestion: 'improveDigestion',
  Goals.other: 'other',
};
