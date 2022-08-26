import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/presentation/login.dart';
import 'package:waste_not/screens/Dashboard/dashboard_page.dart';

class LoginController extends GetxController {
final storage = const FlutterSecureStorage();

  void logout() {
// remove user from secure storage
    storage.delete(key: 'email',
      iOptions: const IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          aOptions: const AndroidOptions(
            encryptedSharedPreferences: true,
          )
    );
    storage.delete(key: 'password',
      iOptions: const IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          aOptions: const AndroidOptions(
            encryptedSharedPreferences: true,
          )
    );

    FirebaseAuth.instance.signOut();
    Get.to(() => Login());
  }

  Future<bool> securelyLogin() async {
    try {
      final email = await storage.read(key: 'email');
      final password = await storage.read(key: 'password');
      final auth = FirebaseAuth.instance;
      auth.signInWithEmailAndPassword(email: email!, password: password!);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> seculerlySaveUser(String email, String password) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(
          key: 'email',
          value: email,
          iOptions: const IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          aOptions: const AndroidOptions(
            encryptedSharedPreferences: true,
          )
          );
      await storage.write(
          key: 'password',
          value: password,
          iOptions: const IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          aOptions: const AndroidOptions(encryptedSharedPreferences: true));
      return true;
    } on Exception catch (e) {
      print("Error $e");
      return false;
    }
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
        print("Results: ");
        print(await seculerlySaveUser(email, password));
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
