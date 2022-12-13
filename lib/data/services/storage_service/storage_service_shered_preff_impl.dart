import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImplements extends StorageService {
  static const ageKey = 'userAge';
  static const weightKey = 'userWeight';
  static const sexKey = 'userSex';

  @override
  Future<bool> saveGeneralInfo(Gender sex, int age, int weight) async {
    UserSettings? userSettings;

    final savedUserSettings = await SharedPreferences.getInstance();
    final isSavedGender = await savedUserSettings.setString(sexKey, sex.toString());
    final isSavedAge = await savedUserSettings.setInt(ageKey, age);
    final isSavedWeight = await savedUserSettings.setInt(weightKey, weight);
    final isSuccess = isSavedGender && isSavedAge && isSavedWeight;
    if (isSuccess) {
      userSettings = UserSettings(gender: sex, age: age, weight: weight);
    }
    return isSuccess;
  }
}
