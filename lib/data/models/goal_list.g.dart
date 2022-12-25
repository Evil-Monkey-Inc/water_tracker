// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalList _$GoalListFromJson(Map<String, dynamic> json) => GoalList(
      goals: (json['goals'] as List<dynamic>).map((e) => $enumDecode(_$GoalEnumMap, e)).toList(),
    );

Map<String, dynamic> _$GoalListToJson(GoalList instance) => <String, dynamic>{
      'goals': instance.goals.map((e) => _$GoalEnumMap[e]!).toList(),
    };

const _$GoalEnumMap = {
  Goal.drinkWater: 'drinkWater',
  Goal.loseWeight: 'loseWeight',
  Goal.shineSkin: 'shineSkin',
  Goal.healthyLifeStyle: 'healthyLifeStyle',
  Goal.improveDigestion: 'improveDigestion',
  Goal.other: 'other',
};
