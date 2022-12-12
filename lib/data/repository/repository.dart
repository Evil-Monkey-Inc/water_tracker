import 'package:water_tracker/data/models/gender.dart';

abstract class Repository {
  Future<bool> registerUser(
    String email,
    String password,
  );

  Future<bool> loginUser(
    String email,
    String password,
  );

  Future<bool> saveGeneralInfo(
    Gender sex,
    int age,
    int weight,
  );
}
