import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FireStoreStorageService{
  Future<void> saveUserInfo(UserSettings userSettings);

  Future<void> saveUserGoal(GoalList goalsList);

// Future<void> saveCupCount(String dateKey, int counterCups);
}

class FireStoreStorageServiceImpl extends FireStoreStorageService{

  static const collectionKey = 'users';
  static const userSettingsKey = 'userSettings';
  static const userCountKey = 'userCount';


  @override
  Future<void> saveUserInfo(UserSettings userSettings) async {
    final testRef = FirebaseFirestore.instance.collection(collectionKey).doc('andrey.pokakal@gmail.com');
    await testRef.set(
        {
          userSettingsKey : UserSettings(
              gender: userSettings.gender,
              age: userSettings.age,
              weight: userSettings.weight,
            ).toJson(),

        },
    );
  }

  @override
  Future<void> saveUserGoal(GoalList goalsList) async {
    final testRef =
        FirebaseFirestore.instance.collection(collectionKey).doc('andrey.pokakal@gmail.com');
    await testRef.set(
      {
        userSettingsKey: GoalList(goals: goalsList.goals).toJson(),
      },
      SetOptions(merge: true),
    );
  }

/*  @override
  Future<bool> saveCupCount(String dateKey, int counterCups) {
    // TODO: implement saveCupCount
    throw UnimplementedError();
  }*/


}
