import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/food_controller.dart';
import 'package:waste_not/auth/controllers/user_controller.dart';

class AddFood extends StatelessWidget {
  // put get controller
  final UserController controller = Get.put(UserController());
  final NewFoodController newFoodController = Get.put(NewFoodController());

  AddFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          margin: EdgeInsets.only(top: 40.h),
          // child: Image.asset('assets/bell.png'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            newFoodController.post();
                          },
                          child: Text(
                            'Share',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 38.h, right: 14.w, left: 14.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/food1.png',
                            width: 62.w,
                            height: 61.h,
                          ),
                          SizedBox(
                            height: 61.h,
                            width: 270.w,
                            child: TextField(
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              onChanged: (value) {
                                newFoodController.changeTitle(value);
                              },
                              decoration: InputDecoration(
                                  hintText: 'Title',
                                  border: InputBorder.none,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(16.sp),
                                  fillColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 23.h),
                        child: TextField(
                          minLines: 2,
                          maxLines: 10,
                          onChanged: (value) {
                            newFoodController.changeDescription(value);
                          },
                          decoration: InputDecoration(
                              hintText: 'Description',
                              border: InputBorder.none,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 3.sp),
                              fillColor: Colors.white),
                        ),
                      ),
                      TextField(
                        minLines: 1,
                        autocorrect: false,
                        onChanged: (value) {
                          newFoodController.changeLocation(value);
                        },
                        decoration: InputDecoration(
                            hintText: 'Location',
                            border: InputBorder.none,
                            filled: true,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 3.sp),
                            fillColor: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 110.w,
                              child: Text(
                                "Add Location",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xff393636),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "${controller.position.latitude.toStringAsFixed(2)},  ${controller.position.longitude.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h),
                        child: Quantity(),
                      )
                    ],
                  ),
                )
              ])
            ],
          )),
    );
  }
}

class Quantity extends StatelessWidget {
  Quantity({
    Key? key,
  }) : super(key: key);

  // final NewFoodController newFoodController = Get.put(NewFoodController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewFoodController>(

      builder: (newFoodController) {
        return Row(
          children: [
            SizedBox(
                width: 110.w,
                child: Text(
                  "Serves",
                  style: TextStyle(fontSize: 16.sp),
                )),
            Row(
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      newFoodController.decrementQuantity();
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.grey,
                      ),
                    )),
                Text(
                  "${newFoodController.quantity.value}",
                  // "Hello",
                  style: TextStyle(fontSize: 18.sp),
                ),
                IconButton(
                    onPressed: () {
                      newFoodController.incrementQuantity();
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Icon(
                        Icons.add,
                        color: Colors.orange[800],
                      ),
                    )),
              ],
            )
          ],
        );
      }
    );
  }
}
