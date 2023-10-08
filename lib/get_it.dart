import 'package:get_it/get_it.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service_firebase_impl.dart';
import 'package:water_tracker/data/services/authentication_service/mocked_authentication_service_impl.dart';
import 'package:water_tracker/data/services/notification_service/flutter_locale_notification_impl.dart';
import 'package:water_tracker/data/services/notification_service/notification_service.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service_impl.dart';
import 'package:water_tracker/data/services/storage_service/flutter_secure_storage_impl.dart';
import 'package:water_tracker/data/services/storage_service/shared_preff_storage_service_impl.dart';
import 'package:water_tracker/env_variables.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  final authService = EnvVariables.mockAuthService
      ? MockedAuthenticationServiceImpl()
      : AuthenticationServiceFirebaseImpl();
  final firebaseStorage = FireStoreStorageServiceImpl();
  final flutterSecureStorage = FlutterSecureStorageImpl();
  final localeStorage = SharedPreffStorageImplements();
  final notificationService = FlutterLocaleNotificationImpl();
  getIt.registerSingleton<AuthenticationService>(authService);
  getIt.registerSingleton<FireStoreStorageService>(firebaseStorage);
  getIt.registerSingleton<Repository>(
    RepositoryImpl(
      authService,
      firebaseStorage,
      flutterSecureStorage,
      localeStorage,
      notificationService,
    ),
  );
}
