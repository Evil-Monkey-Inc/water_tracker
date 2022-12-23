import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';
import 'package:easy_localization/easy_localization.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService, this.storageService);

  final AuthenticationService registrationService;
  final StorageService storageService;

  final counterCupsDateFormat = DateFormat('dd.mm.yyyy');

  @override
  Future<bool> registerUser(String email, String password) async {
    final result = await registrationService.registerUser(email, password);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }

  @override
  Future<bool> loginUser(String email, String password) async {
    final result = await registrationService.loginUser(email, password);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final result = await storageService.saveGeneralInfo(userSettings);
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final result = await storageService.saveGoal(goalsList);
    return result;
  }

  @override
  Future<String?> getGoal() => storageService.getGoal();

  @override
  Future<bool> saveCupCount(int counterCups) async {
    final time = DateTime.now();
    final result = await storageService.saveCupCount(getDateKey(time), counterCups);
    return result;
  }

  @override
  Future<int?> getCupCount(DateTime time) async => storageService.getCupCount(getDateKey(time));

  String getDateKey(DateTime dateTime) => counterCupsDateFormat.format(dateTime);
}
