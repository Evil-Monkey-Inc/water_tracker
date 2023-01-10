import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseService{
  Future<void> saveUserInfo(String email, UserSettings userSettings, GoalList goalList);
}

class StorageServiceFireStoreImpl extends FirebaseService{

  static const collectionKey = 'users';
  static const userSettingsKey = 'userSettings';
  static const userCountKey = 'userCount';

  @override
  Future<void> saveUserInfo(String email, UserSettings userSettings, GoalList goalList) async {
    final testRef = FirebaseFirestore.instance
        .collection(collectionKey)
        .doc(email);
    await testRef.set(
      {
        userSettingsKey: [
          UserSettings(
            gender: userSettings.gender,
            age: userSettings.age,
            weight: userSettings.weight,
          ).toJson(),
          GoalList(goals: goalList.goals).toJson()],
        userCountKey: DateTime.parse(DateTime.now().toString())
      },
    );
  }
}