import 'package:water_tracker/data/models/gender.dart';

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
}
