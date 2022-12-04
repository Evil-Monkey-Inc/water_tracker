import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/registration_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService);

  final RegistrationService registrationService;

  @override
  Future<bool> registerUser(String email, String password) async {
    final result = await registrationService.registerUser(email, password);
    final isSuccessful = result.error == null;
    return isSuccessful;
  }
}
