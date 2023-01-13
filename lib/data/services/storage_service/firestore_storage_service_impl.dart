import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:water_tracker/data/services/storage_service/firestore_storage_service.dart';

class FireStoreStorageServiceImpl extends FireStoreStorageService{

  static const collectionKey = 'users';
  static const userSettingsKey = 'userSettings';
  static const userCountCupKey = 'userCount';
  static const amountOfWaterDrunkKey = 'amountOfWaterDrunk';

  late final int countCup;
  String date = DateFormat('y-M-d').format(DateTime.now());


  @override
  Future<void> saveUserInfo(String email, UserSettings userSettings) async {
    final userCollection = FirebaseFirestore.instance.collection(collectionKey).doc(email);
    await userCollection.set(
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
    final userCollection = FirebaseFirestore.instance.collection(collectionKey).doc(email);
    await userCollection.set(
      {userSettingsKey: GoalList(goals: goalsList.goals).toJson()},
>>>>>>>>> Temporary merge branch 2
      SetOptions(merge: true),
    );
  }

  @override
    Future<void> saveUserCount(String email, int counterCups) async {
      final userCollection = FirebaseFirestore.instance.collection(collectionKey).doc(email).collection(userCountCupKey).doc(amountOfWaterDrunkKey);
      await userCollection.set({date : counterCups});
    }



  @override
  Future<int?> getUserCount(String email) async {
    final userCollection = FirebaseFirestore.instance.collection(collectionKey).doc(email).collection(userCountCupKey).doc(amountOfWaterDrunkKey);
    await userCollection.get().then((DocumentSnapshot documentSnapshot) {
      final Map<String, dynamic> data =
      documentSnapshot.data()! as Map<String, dynamic>;
       countCup = data[date] as int;
    });
    return countCup;
  }}