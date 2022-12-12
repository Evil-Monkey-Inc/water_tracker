import 'package:water_tracker/data/models/gender.dart';
import 'package:water_tracker/data/models/responses/general_info_result.dart';

abstract class StorageService {
  Future<GeneralInfoResult> saveGeneralInfo(
    Gender sex,
    int age,
    int weight,
  );
}
