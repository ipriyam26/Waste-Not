import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_not/screens/Dashboard/dashboard_page.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

// update email on change
  void updateEmail(String value) {
    email.value = value;
  }
  void updatePassword(String value) {
    password.value = value;
  }

  Future<void> login_with_email(String email, String password) async {
    final _auth = FirebaseAuth.instance;

    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = credential.user;
      if (user != null) {
        Get.snackbar(
          'Success',
          "Welcom back ${user.displayName ?? user.email}",
          icon: const Icon(Icons.error_outline, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
        ); 
        Get.to(DasboardPage());
      } else {
        Get.snackbar(
          "Internal User Error",
          "Please try again later",
          icon: const Icon(Icons.error_outline, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.amber[700],
          duration: const Duration(seconds: 3),
        );
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        e.code.split('-').join(' ').toUpperCase(),
        e.message ?? 'An error occurred',
        icon: const Icon(Icons.error_outline, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {
      Get.snackbar(
        "Internal Error",
        e.toString(),
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
