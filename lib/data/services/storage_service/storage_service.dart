import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/responses/storage_result.dart';

abstract class GeneralInfoSavingResult {
  Future<StorageResult> saveGeneralInfo(
    Gender sex,
    int age,
    int weight,
  );
}
