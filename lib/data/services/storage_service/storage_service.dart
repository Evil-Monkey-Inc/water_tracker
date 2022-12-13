import 'package:water_tracker/data/models/user_settings.dart';

abstract class StorageService {
  Future<bool> saveGeneralInfo(UserSettings userSettings);
}
