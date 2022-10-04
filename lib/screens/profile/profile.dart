import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/auth/controllers/food_controller.dart';
import 'package:waste_not/auth/controllers/login_controller.dart';
import 'package:waste_not/auth/controllers/user_controller.dart';
import 'package:waste_not/auth/controllers/userfood_controller.dart';
import 'package:waste_not/widgets/meal.dart';
// import 'package:get/get.dart';
// import 'package:waste_not/auth/controllers/login_controller.dart';
// import 'package:waste_not/auth/controllers/user_controller.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  final UserFoodController userFoodController = Get.put(UserFoodController());
  final UserController user = Get.put(UserController());
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<UserController>(

            builder: (controller) {
              return Container(
                height: 300.h,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 40.w,right:40.w, top: 60.h,bottom: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            'My Profile',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ),
                              ),
                              InkWell(
                                  onTap: (() {
                                    loginController.logout();
                                  }),
                                  child: const Icon(Icons.logout_outlined))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipOval(
                          child: Image.network(
                            controller.user.value.photoUrl,
                            height: 70.h,
                            width: 70.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                 Text(controller.user.value.donations.toString()),
                                SizedBox(
                                  height: 9.h,
                                ),
                                const Text(
                                  'Active Post',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              children: [
                                 Text(controller.user.value.donations.toString()),
                                SizedBox(
                                  height: 9.h,
                                ),
                                const Text(
                                  'Donations',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.name ,
                        
          
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 4.h,),
                           Text(
          controller.user.value.address,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14.sp),
          
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          ),
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.red,

            tabs: const [
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(
                  Icons.add,
                ),
              ),
            ],
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Obx(() => ListView.builder(
                    itemCount: userFoodController.foodList.length,
                    itemBuilder: (context, index) {
                      return Meal(
                        food: userFoodController.foodList[index],
                      );
                    })),
                const Center(
                  child: Text(
                    'Screen 2',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class donation_row extends StatelessWidget {
//   const donation_row({
//     super.key,
//     required this.image,
//   });

//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey,
//           borderRadius: BorderRadius.circular(12.sp),
//         ),
//         width: 390.w,
//         height: 100.h,
//         child: Row(
//           children: [
//             Container(
//               height: 100.h,
//               width: 90.h,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage(image),
//                 ),
//                 color: Colors.black,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(12.sp),
//                     bottomLeft: Radius.circular(12.sp)),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         children: [
//                           Text('Chapati'),
//                           SizedBox(
//                             height: 4.h,
//                           ),
//                           Text('Serves2'),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 22.h,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.location_on_outlined,
//                             color: Colors.black,
//                           ),
//                           Text('Ji. Permuda , 2 kms')
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 5.sp),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.black,
//                       ),
//                       Text('4.5'),
//                     ],
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(12.sp),
//                             bottomRight: Radius.circular(12.sp))),
//                     width: 100.w,
//                     height: 40.h,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
