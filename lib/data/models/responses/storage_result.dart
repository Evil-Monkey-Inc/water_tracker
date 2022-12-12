import 'package:water_tracker/data/models/user.dart';

class StorageResult {
  final User? user;
  final Object? error;

  StorageResult(this.user, this.error);
}
