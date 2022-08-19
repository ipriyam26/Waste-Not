import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/search_container.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          width: 130.w,
          height: 82.h,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/WN 1.png'))),
        ),
        title: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Text('Dhaka , Banassre'),
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
              search_container(
                heading: 'Search',
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))
            ],
          )
        ],
      ),
    );
  }
}
