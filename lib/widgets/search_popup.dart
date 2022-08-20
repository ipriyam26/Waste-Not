import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAlertDialog extends StatefulWidget {
  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Items(
                itemName: 'Palak Paneer',
              ),
              Items(
                itemName: 'Chapati',
              ),
              Items(
                itemName: 'Sabu Dal',
              ),
              Items(
                itemName: 'Soya Milk',
              ),
              Items(
                itemName: 'Chicken Curry',
              ),
              Items(
                itemName: 'Dum Biryani',
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: Center(child: Text('Clear recent searches')),
              )
            ],
          ),
          height: 321.h,
          width: 290.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.sp))),
        ));
  }
}

class Items extends StatelessWidget {
  Items({required this.itemName});

  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
