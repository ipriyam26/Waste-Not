import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Column(
mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.asset('assets/WN 1.png'),
          SignUpForm()
        ]),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 322.h,
        width: 331.w,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(left: 18.w, top: 24.h, bottom: 12.h),
            child: Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Email ID',
                  hintStyle: TextStyle(
                    fontSize: 14.sp
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ), Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 3.h),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        fontSize: 14.sp
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(height: 7.h,),
          const Text('Forgot Password ?',
          style: TextStyle(color: Color(0xffFE724C),
          fontWeight: FontWeight.bold
          ),
          ),

              ],
            ),
          ),
Container(
  height: 51.h,
  width: 297.w,
  margin: EdgeInsets.only(left: 18.w,top: 30.h),
  child:   ElevatedButton(onPressed: (){}, child: Text('Sign Up'),
  
  style: ElevatedButton.styleFrom(
    primary: Color(0xffFE724C)
  ),
  ),
)
        ]),
      ),
    ));
  }
}
