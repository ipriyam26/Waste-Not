import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:waste_not/screens/Dashboard/dashboard_controller.dart';
import 'package:waste_not/screens/filter/filter.dart';
import 'package:waste_not/screens/home/home.dart';
import 'package:waste_not/screens/message/messages.dart';
import 'package:waste_not/screens/profile/profile.dart';

class DasboardPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final screens = [
    Home(),
    const Messages(),
    FilterScreen(),
     ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => Padding(
            padding: EdgeInsets.all(15.sp),
            child: GNav(
                backgroundColor: Colors.transparent,
                onTabChange: (index) {
                  bottomNavigationController.changeIndex(index);
                },
                selectedIndex: bottomNavigationController.selectedIndex.value,
                // rippleColor:
                //     Colors.yellow[800]!, // tab button ripple color when pressed
                // hoverColor: Colors.yellow[700]!, // tab button hover color
                haptic: true, // haptic feedback
                tabBorderRadius: 10,
                tabActiveBorder: Border.all(
                    color: Colors.black, width: 1), // tab button border
                tabBorder: Border.all(
                    color: Colors.grey, width: 1), // tab button border
                tabShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 8)
                ], // tab button shadow
                curve: Curves.bounceIn, // tab animation curves
                duration: const Duration(milliseconds: 10), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                color: Colors.grey[800], // unselected icon color
                activeColor: Colors.purple, // selected icon and text color
                iconSize: 24, // tab button icon size
                tabBackgroundColor: Colors.purple
                    .withOpacity(0.1), // selected tab background color
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 5), // navigation bar padding
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                   GButton(
                    icon: LineIcons.filter,
                    text: 'Filter',
                  ),
                  GButton(
                    icon: LineIcons.facebookMessenger,
                    text: 'Messages',
                  ),

                 
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  )
                ]),
          )),
    );
  }
}
//
//
// BottomNavigationBar(
// type: BottomNavigationBarType.shifting,
// selectedItemColor: Colors.white,
// unselectedItemColor: Colors.white38,
// showSelectedLabels: true,
// showUnselectedLabels: false,
// onTap: (index) {
// bottomNavigationController.changeIndex(index);
// },
// currentIndex: bottomNavigationController.selectedIndex.value,
// items: [
// const BottomNavigationBarItem(
// label: 'Home',
// icon: Icon(Icons.home),
// ),
// const BottomNavigationBarItem(
// label: 'Filter',
// icon: Icon(Icons.filter_list),
// ),
// const BottomNavigationBarItem(
// label: 'Chat',
// icon: Icon(Icons.chat),
// ),
// const BottomNavigationBarItem(
// label: 'Profile',
// icon: Icon(Icons.account_circle),
// )
// ],
// )
