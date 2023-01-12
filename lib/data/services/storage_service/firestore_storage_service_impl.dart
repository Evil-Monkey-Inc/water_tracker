import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service.dart';

class FireStoreStorageServiceImpl extends FireStoreStorageService{

  static const collectionKey = 'users';
  static const userSettingsKey = 'userSettings';
  static const userCountKey = 'userCount';


  @override
  Future<void> saveUserInfo(String email, UserSettings userSettings) async {
    final testRef =
        FirebaseFirestore.instance.collection(collectionKey).doc(email);
    await testRef.set(
      {
        userSettingsKey: UserSettings(
          gender: userSettings.gender,
          age: userSettings.age,
          weight: userSettings.weight,
        ).toJson(),
      },
    );
  }

  @override
  Future<void> saveUserGoal(String email, GoalList goalsList) async {
    final testRef = FirebaseFirestore.instance.collection(collectionKey).doc(email);
    await testRef.set(
      {
        userSettingsKey: GoalList(goals: goalsList.goals).toJson(),
      },
      SetOptions(merge: true),
    );
  }

  @override
  Future<void> saveUserCount(String email, int counterCups) async {
    final time = DateTime.parse(DateTime.now().toString());
    final String dateKey = "userCups.$time";
    final testRef = FirebaseFirestore.instance.collection(collectionKey).doc(email);
    await testRef.update(
      {
        dateKey : counterCups.toString()
      },
    );
  }
}