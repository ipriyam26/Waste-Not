import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/user_controller.dart';
import 'package:waste_not/models/food.dart';

class FoodController extends GetxController {
  List<FoodModel> foodList = <FoodModel>[].obs;

  @override
  Future<void> onInit() async {
    CollectionReference foodInst =
        FirebaseFirestore.instance.collection('foods');
    var response =
        await foodInst.orderBy('postedTime', descending: true).limit(10).get();
    var foodItems = response.docs;
    for (var foodItem in foodItems) {
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
    }
    super.onInit();
  }
}

class NewFoodController extends GetxController {
  var title = ''.obs;
  var description = ''.obs;
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;
  var location = ''.obs;
  var quantity = 0.obs;
  var imageUrl = ''.obs;

  final UserController userController = Get.find<UserController>();
  @override
  void onInit() {
    print("NewFoodController initialized");
    super.onInit();
  }
// make getter and setter for imageUrl
  void changeTitle(String newTitle) {
    title.value = newTitle;
    update();
  }
  void changeDescription(String newDescription) {
    description.value = newDescription;
    update();
  }
  void changeLocation(String newLocation) {
    location.value = newLocation;
    update();
  }
  

  // increment the quantity of the food item
  void incrementQuantity() {
    quantity.value++;
    update();
  }

  // decrement the quantity of the food item
  void decrementQuantity() {
    if (quantity.value > 0) {
      quantity.value--;
      update();
    }
  }

  // empty all
  void emptyAll() {
    title.value = '';
    description.value = '';
    latitude.value = 0.0;
    longitude.value = 0.0;
    location.value = '';
    quantity.value = 0;
    imageUrl.value = '';
  }

// make new foodModel
  FoodModel makeNewFoodModel() {
    final auth = FirebaseAuth.instance;
    FoodModel newFood = FoodModel(
        title: title.value,
        description: description.value,
        latitude: userController.position.latitude,
        longitude: userController.position.longitude,
        location: location.value,
        quantity: quantity.value,
        imageUrl: imageUrl.value,
        rating: userController.user.value.ratings,
        isActive: true,
        postedTime: DateTime.now().microsecondsSinceEpoch,
        user: UserLocal(
            userId: auth.currentUser!.uid,
            donations: userController.user.value.donations,
            image: userController.user.value.photoUrl));
    return newFood;
  }

  // add new food
  void post() {
    CollectionReference foodInst =
        FirebaseFirestore.instance.collection('foods');
    var post = foodInst.add(makeNewFoodModel().toMap()).then((value) {
      Get.snackbar(
        "Success",
        "Food Posted",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
      );
    }).onError((error, stackTrace) {
      Get.snackbar("Error", "Food not posted",
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
    });
  }
}
