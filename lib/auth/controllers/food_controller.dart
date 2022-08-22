import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/food.dart';

class FoodController extends GetxController {
  List<FoodModel> foodList = <FoodModel>[].obs;

  @override
  void onInit() {
    CollectionReference foodInst =
        FirebaseFirestore.instance.collection('food');
    foodInst.limit(10).get().then((value) {
      for (var element in value.docs) {
        Map<String, dynamic> food = element.data() as Map<String, dynamic>;
       FoodModel newModel =  FoodModel(
            title: food['title'],
            description: food['description'],
            imageUrl: food['mageUrl'],
            latitude: food['latitude'],
            longitude: food['longitude'],
            quantity: food['quantity'],
            user: UserLocal(
              userId:food['user']['userId'],
              donations: food['user']['donations'],
              image: food['user']['image'],),
            location: food['location'],
            isActive: food['isActive'],
            postedTime: food['postedTime'],
            rating: food['rating']);
        foodList.add(newModel);
      }
//remove postedTime from each element in the list


    });

    super.onInit();
  }
}
