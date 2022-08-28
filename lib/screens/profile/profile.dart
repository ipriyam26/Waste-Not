import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/widgets/navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 60.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 40.sp,
                        backgroundImage: AssetImage('assets/notify1.png'),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('2'),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
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
                              Text('20'),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
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
                          'Anika Dhawan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        Text('Ji. Pemuda'),
                      ],
                    ),
                  )
                ],
              ),
              color: Colors.white,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Color(0xFFFE724C),
              indicatorColor: Color(0xffF15C22),
              tabs: [
                Tab(
                  child: Text('Donation'),
                ),
                Tab(
                  icon: Icon(
                    Icons.add,
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      donation_row(
                        image: 'assets/food1.png',
                      ),
                      donation_row(
                        image: 'assets/food2.png',
                      ),
                      donation_row(
                        image: 'assets/food3.png',
                      ),
                      donation_row(
                        image: 'assets/food4.png',
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'Screen 2',
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class donation_row extends StatelessWidget {
  const donation_row({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 90.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.sp),
                    bottomLeft: Radius.circular(12.sp)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chapati',
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Row(
                          children: [
                            Container(
                              child: RatingBar.builder(
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.sp),
                              child: Text('2.5'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Serves 2',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          'Jl. Pemuda, 2 kms',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Container(
                          child: Center(
                            child: Text('View more'),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFE724C),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp)),
                          ),
                          width: 90.w,
                          height: 29.h,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xFFE5E4E4),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        width: 500.w,
        height: 100.h,
      ),
    );
  }
}
