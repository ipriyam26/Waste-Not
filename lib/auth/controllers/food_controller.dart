import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/food.dart';

class FoodController extends GetxController {
  List<Map<String,dynamic>> foodList = <Map<String,dynamic>>[].obs;

  @override
  void onInit() {
    CollectionReference foodInst =
        FirebaseFirestore.instance.collection('food');
List<Map<String,dynamic>> replies = [];
    foodInst.limit(10).get().then((value) {
      for (var element in value.docs) {
        print(element.data());
replies.add(element.data() as Map<String,dynamic>);
      }
//remove postedTime from each element in the list
      
foodList.addAll(replies);




    });

    super.onInit();
  }
}
