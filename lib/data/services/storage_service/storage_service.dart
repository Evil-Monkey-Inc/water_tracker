import 'package:water_tracker/data/models/gender.dart';

abstract class StorageService {
  Future<bool> saveGeneralInfo(
    Gender sex,
    int age,
    int weight,
  );
}
