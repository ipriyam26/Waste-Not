import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/screens/profile.dart';
import 'package:waste_not/screens/signup.dart';
import 'package:waste_not/screens/splash.dart';

import 'auth/presentation/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      //designSize: const Size(360, 720),
      minTextAdapt: true,

      splitScreenMode: true,
      builder: (context, a) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignupScreen(),
        );
      },
    );
  }
}
