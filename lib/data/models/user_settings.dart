import 'package:water_tracker/data/models/gender.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_settings.g.dart';

@JsonSerializable()
class UserSettings {
  final Gender gender;
  final int age;
  final int weight;

  UserSettings({required this.gender, required this.age, required this.weight});

  UserSettings copyWith({
    Gender? gender,
    int? age,
    int? weight,
  }) =>
      UserSettings(
        gender: gender ?? this.gender,
        age: age ?? this.age,
        weight: weight ?? this.weight,
      );

  factory UserSettings.fromJson(Map<String, dynamic> json) => _$UserSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$UserSettingsToJson(this);
}
