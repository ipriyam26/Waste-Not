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
        backgroundColor: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          height: 321.h,
          width: 290.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.sp))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Items(
                itemName: 'Palak Paneer',
              ),
              const Items(
                itemName: 'Chapati',
              ),
              const Items(
                itemName: 'Sabu Dal',
              ),
              const Items(
                itemName: 'Soya Milk',
              ),
              const Items(
                itemName: 'Chicken Curry',
              ),
              const Items(
                itemName: 'Dum Biryani',
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: const Center(child: Text('Clear recent searches')),
              )
            ],
          ),
        ));
  }
}

class Items extends StatelessWidget {
  const Items({required this.itemName});

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
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cancel,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
