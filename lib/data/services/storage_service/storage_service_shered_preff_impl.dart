import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class StorageServiceSharedPrefImplements extends StorageService {
  static const userSettingsKey = 'userSettings';

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(userSettingsKey, jsonEncode(userSettings.toJson()));

    return result;
  }
}
