import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService);

  final AuthenticationService registrationService;

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
}
