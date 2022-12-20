import 'package:get_it/get_it.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service_firebase_impl.dart';
import 'package:water_tracker/data/services/notification_service/local_notification_service_impl.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service_shered_preff_impl.dart';

import 'data/services/notification_service/local_notification_service.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<LocalNotificationService>(LocalNotificationServiceImpl());
  getIt.registerSingleton<AuthenticationService>(AuthenticationServiceFirebaseImpl());
  getIt.registerSingleton<StorageService>(StorageServiceSharedPrefImplements());
  getIt.registerSingleton<Repository>(
    RepositoryImpl(
      getIt<AuthenticationService>(),
      getIt<StorageService>(),
      getIt<LocalNotificationService>(),
    ),
  );
}
