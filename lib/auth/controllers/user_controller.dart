import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/user.dart';

class UserController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final user = UserModel(
          name: "",
          email: "",
          username: "",
          photoUrl: "",
          address: "",
          phoneNumber: "",
          gender: "")
      .obs;
  Position position = Position(
      longitude: 0,
      latitude: 0,
      timestamp: DateTime.now(),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      isMocked: true,
      speedAccuracy: 0);

  @override
  Future<void> onInit() async {
    // get user id from firestore firebase
    // await updateUser();
    super.onInit();
  }

  @override
  void onReady() async {
    await updateUser();
    await _getCurrentLocation();
    super.onReady();
  }

  Future<void> updateUser() async {
    User me = _auth.currentUser!;
    // get user data from firebase

    CollectionReference userRef =
        FirebaseFirestore.instance.collection('users');
    var response = await userRef.doc(me.uid).get();
    var userData = response.data() as Map<String, dynamic>;
    user.value = UserModel.fromJson(userData);
    user.refresh();
    update();
  }

  _getCurrentLocation() async {
    LocationPermission permission;
    while (true) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.deniedForever) {
        Get.snackbar("Errot", "Location Permission Denied Forever",
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM);
      }

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Get.snackbar("Error", "Location permissions are denied",
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.red,
              snackPosition: SnackPosition.BOTTOM);
        }
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        break;
      }
    }
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    update();
  }

  // get name
  String get name => user.value.name;
}
