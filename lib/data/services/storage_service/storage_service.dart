import 'package:water_tracker/data/models/responses/storage_result.dart';

abstract class StorageService {
  Future<StorageResult> saveGeneralInfo(
    String sex,
    int age,
    int weight,
  );
}
