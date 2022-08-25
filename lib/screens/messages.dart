import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/widgets/navigation_bar.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Messages',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28.sp),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 40.sp,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.sp),
            child: Text(
              'Recent',
              style: TextStyle(
                  color: Colors.black, fontSize: 18.sp, letterSpacing: 1.2),
            ),
          ),
          Expanded(

            child: ListView(
              children: const [
                MessageTile(
                  username: 'Danny Hopkins',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user1.png',
                ),
                MessageTile(
                  username: 'Bobby Langford',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user2.png',
                ),
                MessageTile(
                  username: 'William Wiles',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user3.png',
                ),
                MessageTile(
                  username: 'James Edelen',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user4.png',
                ),
                MessageTile(
                  username: 'Jose Farmer',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user5.png',
                ),
                MessageTile(
                  username: 'Frank Marten',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user6.png',
                ),
                MessageTile(
                  username: 'Marzena Klasa',
                  message: 'dannylove@gmail.com',
                  image: 'assets/user6.png',
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  const MessageTile(
      {Key? key,
      required this.username,
      required this.message,
      required this.image})
      : super(key: key);

  final String username;
  final String message;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Container(
        height: 100.w,
        width: 100.w,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CircleAvatar(
                  radius: 45.sp,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(message)
                  ],
                ),

              ],
            ),
            const Text('08:43')
          ],
        ),
      ),
    );
  }
}
