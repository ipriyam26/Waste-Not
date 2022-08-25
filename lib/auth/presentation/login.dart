import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';



class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/WN 1.png'),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Text(
                  'Login With Email',
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
                hint: 'Enter email I\'d',
              ),
              SizedBox(
                height: 20.h,
              ),
              const Input(
                hint: 'Enter Password',
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.sp),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
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
                 
                      

                    child: GestureDetector(

                      onTap: () {},

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          )
                        ],
                      ),

                    ),
                  )
                  
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
              SizedBox(
                height: 40.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Don\'t have an account ?'),
                  Text(
                    ' Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Container(
        decoration: const BoxDecoration(),
        child: TextField(
          textAlign: TextAlign.left,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: hint,
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
    );
  }
}
