import 'package:water_tracker/data/models/gender.dart';

abstract class PersonalSettingEvent {}

class SaveGeneralSettingEvent extends PersonalSettingEvent {
  SaveGeneralSettingEvent({required this.sex, required this.age, required this.weight});
  final Gender sex;
  final int age;
  final int weight;
}

class SkipPersonalSettingScreenEvent extends PersonalSettingEvent{}
