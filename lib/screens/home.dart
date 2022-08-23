import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/food_controller.dart';
import 'package:waste_not/widgets/meal.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/search_container.dart';
import '../widgets/search_popup.dart';
import '../widgets/sort_popup.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//put get controller
  final FoodController controller = Get.put(FoodController());



    return Scaffold(
      backgroundColor: Colors.white,
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
        
          children: [
             Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 14.sp,
            ),
             Text(
              'Dhaka , Banassre',
              style: TextStyle(
                color: const Color(0xff393636,
              ),
              fontSize: 14.sp
              ),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 8.w),
            child:Image.asset('assets/icons/bell.png', width: 14.w, height: 16.72.h,),
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

                  onPressed: () {},
                  icon: GestureDetector(
                      onTap: () {
                        showAnimatedDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return const SortPopup();
                          },
                          animationType: DialogTransitionType.fadeScale,
                        );
                      },
                      child: const Icon(Icons.filter_list)))

            ],
          ),
          Expanded(
            child: GetX<FoodController>(
              builder: (controller) {
                return ListView.builder(

                  itemBuilder: (context, i) {
                    return  Meal(food: controller.foodList[i],);
                  },
                  itemCount: controller.foodList.length,
                );
              }
            ),
          )
        ],
      ),
    );
  }
}


