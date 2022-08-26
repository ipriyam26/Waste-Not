import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/login_controller.dart';

class Login extends StatelessWidget {
// put login controller
  final loginController = Get.put(LoginController());

  Login({Key? key}) : super(key: key);
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> form = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
        child: SingleChildScrollView(
          child: Form(
            key: form,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {},
                    onChanged: (value) {
                      email = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value) {},
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
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
                SizedBox(
                  height: 18.h,
                ),
                InkWell(
                  onTap: () {
                    final isValid = form.currentState!.validate();
                    if (isValid) {
                      loginController.login_with_email(email, password);
                    } else {
                      Get.showSnackbar(const GetSnackBar(
                        title: "Error",
                        message: "Please fill all the fields",
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
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
      ),
    );
  }
}

// class Input extends StatelessWidget {
//   const Input({
//     super.key,
//     required this.hint,
//   });

//   final String hint;
//   final RxString value;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8.sp),
//       child: Container(
//         decoration: const BoxDecoration(),
//         child: TextField(
//           onChanged: (value) {},
//           textAlign: TextAlign.left,
//           keyboardType: TextInputType.text,
//           decoration: InputDecoration(
//             hintText: hint,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.sp),
//               borderSide: const BorderSide(
//                 width: 2,
//                 style: BorderStyle.none,
//               ),
//             ),
//             filled: true,
//             contentPadding: EdgeInsets.all(16.sp),
//             fillColor: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
