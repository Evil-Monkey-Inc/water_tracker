import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/responses/storage_result.dart';

abstract class StorageService {
  Future<GeneralInfoSavingResult> saveGeneralInfo(
    Gender sex,
    int age,
    int weight,
  );
}
