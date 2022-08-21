import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Text(
          'Cancel',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 16.sp, right: 5.sp),
            child: Text(
              'Done',
              style: TextStyle(color: Colors.orange),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 400.sp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 12.sp,
                  ),
                  CircleAvatar(
                    radius: 40.sp,
                    backgroundImage: AssetImage('assets/Oval.png'),
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Change Profile Photo',
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(color: Colors.black, thickness: 0.2),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(
                    feild: 'Name',
                    info: 'Rubi Devi',
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(
                    feild: 'Username',
                    info: 'rubi devi',
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(
                    feild: 'Location',
                    info: 'Location',
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(
                    feild: 'Private Information',
                    isbold: true,
                    info: '',
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(feild: 'Email', info: 'rubi.devi@gmail.com'),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(feild: 'Phone', info: '+91 704 555 0147'),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  EditRow(feild: 'Gender', info: 'Female'),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    indent: 180,
                  ),
                ],
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class EditRow extends StatelessWidget {
  EditRow(
      {Key? key,
      required this.feild,
      this.info = '',
      this.isbold = false,
      this.weight = FontWeight.bold})
      : super(key: key);

  final String feild;
  String info = '';
  bool isbold = false;
  FontWeight weight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Text(
            feild,
            style: isbold ? TextStyle(fontWeight: weight) : null,
          ),
        ),
        SizedBox(
          width: 110.w,
        ),
        Text(info),
      ],
    );
  }
}
