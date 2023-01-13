import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class FireStoreStorageServiceImpl extends FireStoreStorageService {
  final fireStore = FirebaseFirestore.instance;

  @override
  Future<bool> saveUserSetting(String email, UserSettings userSettings) async {
    try {
      final userCollection = fireStore.collection(StorageService.usersKey).doc(email);
      await userCollection.set(
        {StorageService.userSettingsKey: userSettings.toJson()},
      );
      return true;
    } on FirebaseException {
      return false;
    }
  }

  @override
  Future<bool> saveUserGoal(String email, GoalList goalsList) async {
    try {
      final userCollection = fireStore.collection(StorageService.usersKey).doc(email);

      await userCollection.set(
        {StorageService.userSettingsKey: goalsList.toJson()},
        SetOptions(merge: true),
      );
      return true;
    } on FirebaseException {
      return false;
    }
  }

  @override
  Future<bool> saveUserCount(String email, String dateKey, int counterCups) async {
    try {
      final userCollection = fireStore
          .collection(StorageService.usersKey)
          .doc(email)
          .collection(StorageService.userCountKey)
          .doc(StorageService.amountOfWaterDrunkKey);

      await userCollection.set({dateKey: counterCups});
      return true;
    } on FirebaseException {
      return false;
    }
  }

  @override
  Future<int?> getUserCount(String email, String dateKey) async {
    try {
      final userCollection = fireStore
          .collection(StorageService.usersKey)
          .doc(email)
          .collection(StorageService.userCountKey)
          .doc(StorageService.amountOfWaterDrunkKey);

      final documentSnapshot = await userCollection.get();
      final data = documentSnapshot.data();
      return data?[dateKey] as int?;
    } on FirebaseException {
      return 0;
    }
  }
}
