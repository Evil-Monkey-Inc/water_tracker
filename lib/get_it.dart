import 'package:get_it/get_it.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl..dart';
import 'package:water_tracker/data/services/registration_service.dart';
import 'package:water_tracker/data/services/registration_service_impl.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  final registrationService = RegistrationServiceFirebaseImpl();

  getIt.registerSingleton<RegistrationService>(registrationService);

  getIt.registerSingleton<Repository>(RepositoryImpl(registrationService));
}
