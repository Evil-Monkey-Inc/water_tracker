import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/shered_preff_storage_service.dart';
import 'package:easy_localization/easy_localization.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService, this.sheredPreffStorageService, this.fireStoreService);

  final AuthenticationService registrationService;
  final SheredPreffStorageService sheredPreffStorageService;
  final FireStoreStorageService fireStoreService;

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
    final result = await sheredPreffStorageService.saveGeneralInfo(userSettings);
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final result = await sheredPreffStorageService.saveGoal(goalsList);
    return result;
  }

  @override
  Future<String?> getGoal() => sheredPreffStorageService.getGoal();

  @override
  Future<bool> saveCupCount(int counterCups) async {
    final time = DateTime.now();
    final result = await sheredPreffStorageService.saveCupCount(getDateKey(time), counterCups);
    return result;
  }

  @override
  Future<int?> getCupCount(DateTime time) async => sheredPreffStorageService.getCupCount(getDateKey(time));

  String getDateKey(DateTime dateTime) => counterCupsDateFormat.format(dateTime);

  @override
  Future<void> saveUserGoal(String email, GoalList goalsList) => fireStoreService.saveUserGoal(email, goalsList);

  @override
  Future<void> saveUserInfo(String email, UserSettings userSettings) => fireStoreService.saveUserInfo(email, userSettings);

  @override
  Future<void> saveUserCount(String email, int counterCups) => fireStoreService.saveUserCount(email, counterCups);

 
}
