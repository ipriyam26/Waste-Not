import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
    if (newUser != null) {
      addUsername(username);
      return newUser.user!.uid;
    } 

  }

  addUsername(String username) {
    username = username.trim();
    if (username.isEmpty) {
      return;
    }
    User user = _auth.currentUser!;
    user.updateDisplayName(username);
  }
}
