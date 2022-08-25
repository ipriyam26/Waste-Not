import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: const Duration(milliseconds: 300),
      color: const Color(0xFFFFC87F),
      height: 55,
      buttonBackgroundColor: const Color(0xFFF49517),
      backgroundColor: Colors.transparent,

      items:  const <Widget>[
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.restaurant,
            size: 35,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.filter_alt_outlined,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.message_rounded,
              size: 30,
              color: Color(0xFF00144F),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Color(0xFF00144F),
          ),
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
