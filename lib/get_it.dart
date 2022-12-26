import 'package:get_it/get_it.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service_firebase_impl.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service_shered_preff_impl.dart';
import 'package:water_tracker/env_variables.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  final authService =
      EnvVariables.mockAuthService ? MockedAuthenticationServiceImpl() : AuthenticationServiceFirebaseImpl();
  final storageService = StorageServiceSharedPrefImplements();

  getIt.registerSingleton<AuthenticationService>(authService);
  getIt.registerSingleton<StorageService>(storageService);
  getIt.registerSingleton<Repository>(RepositoryImpl(authService, storageService));
}
