import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/signup_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waste_not/screens/home/home.dart';

class SignupScreen extends StatelessWidget {
  // TextEditingController emailController = TextEditingController();
  final SignupController controller = Get.put(SignupController());

  String userName = '';
  String email = '';
  String password = '';
  // TextEditingController passwordController = TextEditingController();

  // TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> form = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/WN 1.png',
                width: 380.w,
                height: 320.h,
                fit: BoxFit.cover,
                // color: Colors.cyan,
              ),
              Container(
                width: 331.w,
                height: 410.h,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                  color: Colors.white,
                ),
                child: Form(
                  key: form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.sp),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {},
                          onChanged: (value) {
                            userName = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: const BorderSide(
                                width: 2,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(16.sp),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.sp),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'Enter a valid email!';
                            }
                            return null;
                          },
                          textAlign: TextAlign.left,
                          onFieldSubmitted: (value) {},
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: const BorderSide(
                                width: 2,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(16.sp),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.sp),
                        child: TextFormField(
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password!';
                            }
                            return null;
                          },
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: const BorderSide(
                                width: 2,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(16.sp),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.sp)),
                              color: Colors.white,
                            ),
                            height: 42.45.h,
                            width: 132.59.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                    'https://img.icons8.com/color/48/000000/google-logo.png',
                                    height: 30.h,
                                    width: 30.w),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () async {
                          final isValid = form.currentState!.validate();
                          if (!isValid) {
                            return;
                          }
                          form.currentState!.save();
                          String? message = await controller.signup(
                              email, password, userName);
                          // if (message != null) {
                          //   Fluttertoast.showToast(msg: message);
                          // }
                          Get.to(() => Home());
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5.h),
                              height: 60.h,
                              width: 297.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFE724C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.sp))),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
