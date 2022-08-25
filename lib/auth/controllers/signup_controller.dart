import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/user.dart';

class SignupController extends GetxController {
  final _auth = FirebaseAuth.instance;

  Future<String?> signup(String email, String password, String username) async {
    UserCredential newUser = await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .catchError((e) {
      Get.snackbar('Error', e.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    });
    addUserDetails(username);
    return newUser.user!.uid;
  }

  addUserDetails(String username) {
    username = username.trim();
    if (username.isEmpty) {
      return;
    }
    User user = _auth.currentUser!;
    user.updateDisplayName(username);
    user.updatePhotoURL(
        'https://source.unsplash.com/random/300%C3%97300/?food');

    CollectionReference users = FirebaseFirestore.instance.collection('users');
    UserModel dummyModel = UserModel(
        name: 'Unknown',
        email: user.email!,
        username: username,
        photoUrl: 'https://source.unsplash.com/random/300%C3%97300/?food',
        address: 'Unknown',
        phoneNumber: '0000000000',
        gender: 'Unknown');

    try {
      users.doc(user.uid).set(dummyModel.toMap());
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
