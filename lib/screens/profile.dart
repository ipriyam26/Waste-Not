
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/widgets/navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      body: Column(
        children: [
          SizedBox(
            height: 271.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 72.h, left: 48.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {},
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.notifications_none)),
                          ],
                        ),
                      ],
                    )),
                middleSection(),
                Container(
                  margin: EdgeInsets.only(left: 23.w, top: 13.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priyam Srivastava',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'JL Pemuda',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SecondPart()
        ],
      ),
    );
  }

  Container middleSection() {
    return Container(
        margin: EdgeInsets.only(left: 24.w, top: 25.h, right: 38.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Image.network(
                'https://source.unsplash.com/random/300%C3%97300/?person',
                height: 61.h,
                width: 62.w,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                profileInfo(3, 'Active Donations'),
                SizedBox(
                  width: 10.w,
                ),
                profileInfo(20, 'Donations')
              ],
            )
          ],
        ));
  }

  Column profileInfo(int current, String title) {
    return Column(
      children: [
        Text(
          current.toString(),
          style: TextStyle(fontSize: 15.sp),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
      ],
    );
  }
}

class SecondPart extends StatefulWidget {
  SecondPart({
    Key? key,
  }) : super(key: key);
  bool active = true;
  @override
  State<SecondPart> createState() => _SecondPartState();
}

class _SecondPartState extends State<SecondPart> {
  InkWell titleActive(String title, bool active) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.active = !widget.active;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 15.h),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 11.sp),
            ),
            Container(
              margin: EdgeInsets.only(top: 9.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: (active) ? const Color(0xffFE724C) : null,
              ),
              width: 119.w,
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              titleActive(
                'Donation',
                widget.active,
              ),
              titleActive('Received', !widget.active)
            ],
          ),


        ],
      ),
    );
  }
}
