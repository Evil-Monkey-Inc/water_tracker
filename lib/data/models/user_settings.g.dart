// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) => UserSettings(
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      age: json['age'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$UserSettingsToJson(UserSettings instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender]!,
      'age': instance.age,
      'weight': instance.weight,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
