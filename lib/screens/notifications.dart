import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              thickness: 0.2,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp),
              child: Text(
                'New',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundImage: const AssetImage('assets/notify1.png'),
                ),
                const Text('Shyam requested your food. 1h'),
                SizedBox(
                  height: 44.h,
                  width: 43.18.w,
                  child: Image.asset('assets/notify2.png'),
                ),
              ],
            ),
            const Divider(
              thickness: 0.2,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.all(8.sp),
              child: Text(
                'Today',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Container(
                    width: 80.w,
                    height: 49.h,
                    color: Colors.transparent,
                    child: Stack(
                      children: <Widget>[
                        const Positioned(
                          left: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/notify3.png'),
                          ),
                        ),
                        Positioned(
                          left: 10.w,
                          top: 8.w,
                          bottom: 0,
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/notify4.png'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'kiero_d, zackjohn and 26 others\n requested your food. 3h',
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 44.h,
                  width: 43.18.w,
                  child: Image.asset('assets/notify2.png'),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            const Divider(
              thickness: 0.2,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              child: Text(
                'This week',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundImage: const AssetImage('assets/notify5.png'),
                ),
                const Text('craig_love requested your food.2d.'),
                SizedBox(
                  height: 44.h,
                  width: 43.18.w,
                  child: Image.asset('assets/notify6.png'),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const thisweekRow(
              image: 'assets/week1.png',
              notification: 'martini_rond started\n messaging you. 3d',
            ),
            SizedBox(
              height: 20.h,
            ),
            const thisweekRow(
              image: 'assets/week2.png',
              notification: 'maxjacobson started\n messaging you. 3d',
            ),
            SizedBox(
              height: 20.h,
            ),
            const thisweekRow(
              image: 'assets/week3.png',
              notification: 'mis_potter started\n messaging you. 3d',
            ),
            SizedBox(
              height: 12.h,
            ),
            const Divider(
              thickness: 0.2,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              child: Text(
                'This Month',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            const thisweekRow(
              image: 'assets/week1.png',
              notification: 'martini_rond started\n messaging you. 3d',
            ),
            SizedBox(
              height: 20.h,
            ),
            const thisweekRow(
              image: 'assets/week2.png',
              notification: 'maxjacobson started\n messaging you. 3d',
            ),
            SizedBox(
              height: 20.h,
            ),
            const thisweekRow(
              image: 'assets/week3.png',
              notification: 'mis_potter started\n messaging you. 3d',
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}

class thisweekRow extends StatelessWidget {
  const thisweekRow({required this.image, required this.notification});
  final String image;
  final String notification;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 20.sp,
          backgroundImage: AssetImage(image),
        ),
        Text(notification),
        Container(
          height: 40.h,
          width: 80.w,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(10.sp)),
          ),
          child: const Center(
            child: Text('Message'),
          ),
        ),
      ],
    );
  }
}
