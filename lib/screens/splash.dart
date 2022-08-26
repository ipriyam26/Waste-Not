import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/login_controller.dart';
import 'package:waste_not/auth/controllers/user_controller.dart';
import 'package:waste_not/auth/presentation/login.dart';

import 'Dashboard/dashboard_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final LoginController loginController = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
    loginCheck();
  }

  Future<void> loginCheck() async {
    bool loggedIn = await loginController.securelyLogin();
    print(loggedIn);
    if (loggedIn) {
      Timer(const Duration(seconds: 4), () => Get.to(() => DasboardPage()));
    } else {
      Timer(const Duration(seconds: 4), () => Get.to(() => Login()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/WN 1.png'),
    );
  }
}
