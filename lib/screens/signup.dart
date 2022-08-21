import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/presentation/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/WN 1.png',
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
                    const Input(
                      hint: 'Username',
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    const Input(
                      hint: 'Enter email I\'d',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Input(
                      hint: 'Enter Password',
                      
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
                      borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                      color: Colors.white,
                    ),
                    height: 42.45.h,
                    width: 132.59.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image.network('https://img.icons8.com/color/48/000000/google-logo.png', height: 30.h, width: 30.w), 
                       SizedBox(width: 5.w,),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
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
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            height: 60.h,
                            width: 297.w,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFE724C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.sp))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));

  }
}
