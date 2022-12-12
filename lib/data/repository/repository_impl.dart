import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService, this.storageService);

  final AuthenticationService registrationService;
  final GeneralInfoSavingResult storageService;

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
  Future<bool> saveGeneralInfo(Gender sex, int age, int weight) async {
    final result = await storageService.saveGeneralInfo(sex, age, weight);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }
}
