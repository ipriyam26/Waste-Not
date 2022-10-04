import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/food.dart';

class UserFoodController extends GetxController {
  List<FoodModel> foodList = <FoodModel>[].obs;

  @override
  Future<void> onInit() async {
        super.onInit();

    var fireAuth = FirebaseAuth.instance;
    CollectionReference foodInst =
        FirebaseFirestore.instance.collection('foods');
    var response = await foodInst
        .orderBy('postedTime', descending: true)
        .where('userID.userId', isEqualTo: fireAuth.currentUser!.uid)
        .limit(10)
        .get();
    print(FirebaseAuth.instance.currentUser!.uid);
    var foodItems = response.docs;
    for (var foodItem in foodItems) {
      // print(foodItem['title']);
      var food = foodItem.data()! as Map<String, dynamic>;
      FoodModel newModel = FoodModel(
          title: food['title'],
          description: food['description'],
          imageUrl: food['imageUrl'],
          latitude: food['latitude'],
          longitude: food['longitude'],
          quantity: food['quantity'],
          user: UserLocal(
            userId: food['userID']['userId'],
            donations: food['userID']['donations'],
            image: food['userID']['image'],
          ),
          location: food['location'],
          isActive: food['isActive'],
          postedTime: food['postedTime'],
          rating: food['rating']);

      foodList.add(newModel);
      update();
    }
  }
}
