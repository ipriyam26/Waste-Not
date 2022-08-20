import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/search_container.dart';
import '../widgets/search_popup.dart';
import '../widgets/sort_popup.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          width: 130.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/WN 1.png'), fit: BoxFit.fill),
          ),
        ),
        title: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Text(
              'Dhaka , Banassre',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: search_container(
                  heading: 'Search',
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              IconButton(
                  onPressed: () {},
                  icon: GestureDetector(
                      onTap: () {
                        showAnimatedDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return SortPopup();
                          },
                          animationType: DialogTransitionType.fadeScale,
                        );
                      },
                      child: Icon(Icons.filter_list)))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return Meal();
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

class Meal extends StatelessWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(12.sp))),
        height: 110.w,
        width: 200.w,
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                image: DecorationImage(
                    image: AssetImage('assets/food1.png'), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Palak Paneer',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 90.w,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 15.sp,
                            )),
                        Text('2.5')
                      ],
                    )
                  ],
                ),
                Row(
                  children: [Text('Serves 2')],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.yellow,
                        )),
                    Text('Ji Pemuda'),
                    SizedBox(
                      width: 40.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: .0),
                      child: Container(
                        child: Center(
                          child: Text(
                            'View More',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.sp),
                                bottomRight: Radius.circular(16.sp))),
                        height: 40.h,
                        width: 90.w,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
