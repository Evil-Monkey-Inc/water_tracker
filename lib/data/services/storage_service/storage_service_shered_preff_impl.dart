import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/responses/general_info_result.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImplements extends StorageService {
  static const ageKey = 'userAge';
  static const weightKey = 'userWeight';
  static const sexKey = 'userSex';

  @override
  Future<GeneralInfoResult> saveGeneralInfo(Gender sex, int age, int weight) async {
    Object? error;
    final SharedPreferences savedUserSettings;
    final bool isSavedGender;
    final bool isSavedAge;
    final bool isSavedWeight;
    UserSettings? userSettings;

    try {
      savedUserSettings = await SharedPreferences.getInstance();
      isSavedGender = await savedUserSettings.setString(sexKey, sex.toString());
      isSavedAge = await savedUserSettings.setInt(ageKey, age);
      isSavedWeight = await savedUserSettings.setInt(weightKey, weight);
      final isSuccess = isSavedGender && isSavedAge && isSavedWeight;
      if (isSuccess) {
        userSettings = UserSettings(gender: sex, age: age, weight: weight);
      }
    } catch (e) {
      error = e;
    }

    final result = GeneralInfoResult(userSettings, error);
    return result;
  }
}
