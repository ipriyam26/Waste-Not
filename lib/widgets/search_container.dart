import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/widgets/search_popup.dart';

class search_container extends StatelessWidget {
  const search_container({
    Key? key,
    required this.heading,
  }) : super(
          key: key,
        );

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 311.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: GestureDetector(
                onTap: () {
                  showAnimatedDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return CustomAlertDialog();
                    },
                    animationType: DialogTransitionType.fadeScale,
                  );
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              hintText: heading),
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBDBDBD)),
          borderRadius: BorderRadius.circular(12.sp),
          color: Colors.transparent),
    );
  }
}
