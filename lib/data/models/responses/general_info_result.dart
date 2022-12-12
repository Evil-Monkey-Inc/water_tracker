import 'package:water_tracker/data/models/user_settings.dart';

class GeneralInfoResult {
  GeneralInfoResult(this.userSettings, this.error);
  final Object? error;
  final UserSettings? userSettings;
}
