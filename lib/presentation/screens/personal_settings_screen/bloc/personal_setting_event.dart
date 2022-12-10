abstract class PersonalSettingEvent {}

class SaveGeneralSettingEvent extends PersonalSettingEvent {
  SaveGeneralSettingEvent(this.sex, this.age, this.weight);
  final String sex;
  final int age;
  final int weight;
}
