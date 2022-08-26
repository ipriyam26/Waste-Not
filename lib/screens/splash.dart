import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/presentation/login.dart';

import 'Dashboard/dashboard_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(() => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/WN 1.png'),
    );
  }
}
