import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SortPopup extends StatefulWidget {
  const SortPopup({Key? key}) : super(key: key);

  @override
  State<SortPopup> createState() => _SortPopupState();
}

SfRangeValues _values = SfRangeValues(3.0, 7.0);

class _SortPopupState extends State<SortPopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sort',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ))
              ],
            ),
            Divider(
              indent: 70,
              thickness: 1.2,
              endIndent: 70,
            ),
            Tile(
              name: 'Most Liked',
            ),
            Tile(name: 'Closest items'),
            Tile(name: 'Fresh items'),
            Padding(
              padding: EdgeInsets.all(18.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Number of serveings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.sp),
                  ),
                  Container(
                    child: SfRangeSlider(
                      inactiveColor: Color(0xFFE2E2E2),
                      activeColor: Colors.black,
                      min: 2.0,
                      max: 10.0,
                      values: _values,
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _values = newValue;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '4-5 serves',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.sp),
                  )
                ],
              ),
            )
          ],
        ),
        width: 360.w,
        height: 448.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.sp)),
            color: Colors.white),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.32),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(12.sp)),
            color: Colors.white),
        height: 63.h,
        width: 322.w,
        child: Padding(
          padding: EdgeInsets.only(top: 8.sp, left: 8.sp),
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
