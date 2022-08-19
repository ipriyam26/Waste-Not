import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/screens/chat.dart';
import 'package:waste_not/screens/home.dart';
import 'package:waste_not/screens/messages.dart';
import 'package:waste_not/screens/food.dart';
import 'package:waste_not/screens/splash.dart';

void main() => runApp(MyApp());

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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}
