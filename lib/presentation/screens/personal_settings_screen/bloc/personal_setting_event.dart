import 'package:water_tracker/data/models/gender.dart';

abstract class PersonalSettingEvent {}

class SaveGeneralSettingEvent extends PersonalSettingEvent {
  SaveGeneralSettingEvent(this.sex, this.age, this.weight);
  final Gender sex;
  final int age;
  final int weight;
}
