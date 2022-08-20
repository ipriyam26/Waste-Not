import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/screens/filter.dart';
import 'package:waste_not/screens/food.dart';
import 'package:waste_not/widgets/meal.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/search_container.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          width: 130.w,
          height: 100.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/WN 1.png'), fit: BoxFit.fill),
          ),
        ),
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            const Text(
              'Dhaka , Banassre',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Icon(
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
                child: const search_container(
                  heading: 'Search',
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>  FilterScreen()),
                    // );
                  },
                  icon: const Icon(Icons.add_a_photo))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return const Meal();
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}


