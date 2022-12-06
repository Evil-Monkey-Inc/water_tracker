import 'package:get_it/get_it.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl.dart';
import 'package:water_tracker/data/services/sign_up_service.dart';
import 'package:water_tracker/data/services/sign_up_service_firebase_impl.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<SingUpService>(SingUpServiceFirebaseImpl());

  getIt.registerSingleton<Repository>(RepositoryImpl(getIt<SingUpService>()));
}
