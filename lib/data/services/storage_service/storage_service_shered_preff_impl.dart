import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImpl extends StorageService {
  static const ageKey = 'userAge';
  static const weightKey = 'userWeight';
  static const sexKey = 'userSex';

  @override
  Future<void> saveGeneralInfo(String sex, int age, int weight) async {
    final savedUserSettings = await SharedPreferences.getInstance();
    await savedUserSettings.setString(sexKey, sex);
    await savedUserSettings.setInt(ageKey, age);
    await savedUserSettings.setInt(weightKey, weight);
  }
}
