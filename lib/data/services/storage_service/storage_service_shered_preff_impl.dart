import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImplements extends GeneralInfoSavingResult {
  static const ageKey = 'userAge';
  static const weightKey = 'userWeight';
  static const sexKey = 'userSex';

  @override
  Future<bool> saveGeneralInfo(String sex, int age, int weight) async {
    final savedUserSettings = await SharedPreferences.getInstance();
    final isSavedGender = await savedUserSettings.setString(sexKey, sex);
    final isSavedAge = await savedUserSettings.setInt(ageKey, age);
    final isSavedWeight = await savedUserSettings.setInt(weightKey, weight);
  }
}
