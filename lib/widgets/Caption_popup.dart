import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          SizedBox(
                            width: 10.w,
                          ),
                          const Text('Best Before .......'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
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
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          child: IconButton(
                            icon: const Center(child: Icon(Icons.add)),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
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
