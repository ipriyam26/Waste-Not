import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFood extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Add Food",
            style: TextStyle(
              fontSize: 27.sp,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: EdgeInsets.all(7.w),
              child: SizedBox(
                
                height: 360.h,
                width: 422.w,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
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
                          SizedBox(
                            width: 62.w,
                            height: 61.h,
                            child: Image.asset('assets/image 11.png'),
                          ),
                         
                          TextField(
                            
                            decoration: InputDecoration(
                              fillColor: Colors.red,
                              helperText: "Food Name",
                              border: InputBorder.none,
                              helperStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                              ),
                            ),
                          )
                          
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                      child: Row(
                        children: [
                          const Text('Caption....'),
                          SizedBox(
                            width: 40.w,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
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
                          const Text('Add Location'),
                          SizedBox(
                            width: 40.w,
                          ),
                          Row(
                            children: const [
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
                    const Divider(
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                        ),
                        const Text('Serves'),
                        SizedBox(
                          width: 65.w,
                        ),
                        Container(
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          child: Icon(Icons.remove,
                          color: Colors.amber[800],
                          ),
                        ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        child:  Text('1',
                        style: TextStyle(
                         fontSize: 20.sp 
                        ),
                        ),
                      ),
                        
                        Container(
                          
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          child: Icon(Icons.add,
                          color: Colors.amber[800],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Text('Add Rating'),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                          const Icon(Icons.star),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
