import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/screens/EditScreen.dart';

class Caption extends StatelessWidget {
  const Caption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cancel'),
                          Text(
                            'Share',
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 62.w,
                            height: 61.h,
                            child: Image.asset('assets/image 11.png'),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text('Best Before .......'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Divider(
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.black,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                      child: Row(
                        children: [
                          Text('Caption....'),
                          SizedBox(
                            width: 40.w,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.black,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                      child: Row(
                        children: [
                          Text('Add Location'),
                          SizedBox(
                            width: 40.w,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                              ),
                              Text('Dhaka, Banassre'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                        ),
                        Text('Serves'),
                        SizedBox(
                          width: 65.w,
                        ),
                        Container(
                          child: IconButton(
                            icon: Center(child: Icon(Icons.add)),
                            onPressed: () {},
                          ),
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text('Add Rating'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                  color: Colors.white,
                ),
                height: 360.h,
                width: 422.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
