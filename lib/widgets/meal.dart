import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/food.dart';
import 'package:waste_not/screens/food.dart';

class Meal extends StatelessWidget {
  const Meal({
    Key? key,
    required this.food,
  }) : super(key: key);
  final FoodModel food;
  @override
  Widget build(BuildContext context) {
    String fixString(String input,int words) {
      List<String> split = input.split(' ');
      if(split.length > words) {
        return '${split.sublist(0, words).join(' ')}...';
      }
      return input;
    
    }

    final title = food.title.replaceAll('-', '').split(' ').length > 3
        ? '${food.title.split(' ')[0]} ${food.title.split(' ')[1]}${food.title.split(' ')[2]}'
        : food.title;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: InkWell(
        onTap: () {
          Get.to(Food(food: food));
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffF6f6f6),
              borderRadius: BorderRadius.all(Radius.circular(12.sp))),
          height: 110.w,
          width: 200.w,
          child: Row(
            children: [
              imageHandler(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 15.h, left: 19.72.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            fixString(food.title,3),
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 90.w,
                          // ),

                          Padding(
                            padding: EdgeInsets.only(right: 17.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.black,
                                  size: 15.w,
                                ),
                                Text(food.rating.ceil().toString(),),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text('Serves ${food.quantity}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: const Color(0xffFE724C),
                                size: 15.w,
                              ),
                              SizedBox(
                                width: 7.2.w,
                              ),
                              Text(
                                fixString(food.location,2),
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: .0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16.sp),
                                      bottomRight: Radius.circular(16.sp))),
                              height: 40.h,
                              width: 90.w,
                              child: const Center(
                                child: Text(
                                  'View More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container imageHandler() {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.sp)),
        image: DecorationImage(
            image: NetworkImage(food.imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
