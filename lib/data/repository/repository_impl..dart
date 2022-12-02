import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/registration_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(this.registrationService);
  final RegistrationService registrationService;

  @override
  Future<void> registerUser(String password, String email) => registrationService.registerUser(password, email);
}
