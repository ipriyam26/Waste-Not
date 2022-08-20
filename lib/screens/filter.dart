import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_not/widgets/navigation_bar.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  final List<String> locations = [
    'Mumbai',
    'Delhi',
    'Kolkata',
    'Chennai',
    'Bangalore',
    'Hyderabad',
    'Pune',
    'Ahmedabad',
  ];

  final List<Map<String, dynamic>> categories = [
    {
      'name': 'Fresh Fruits \n& Vegetable',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?vegetables',
      'color': const Color(0xffC1EDD1),
      'border_color': const Color(0xff53B175)
    },
    {
      'name': 'Cooking Oil \n& Ghee',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?oil',
      'color': const Color(0xffFBE7D2),
      'border_color': const Color(0xffF5A623)
    },
    {
      'name': 'Meat \n& Fish',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?meat',
      'color': const Color(0xffF9C2B6),
      'border_color': const Color(0xffF7A593)
    },
    {
      'name': 'Bread \n& Bakery',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?bread',
      'color': const Color(0xffECDAF2),
      'border_color': const Color(0xffD3B0E0)
    },
    {
      'name': 'Dairy \n& Eggs',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?dairy',
      'color': const Color(0xffFFF9E5),
      'border_color': const Color(0xffFFF9E5)
    },
    {
      'name': 'Beverages',
      'image': 'https://source.unsplash.com/random/300%C3%97300/?beverages',
      'color': const Color(0xffD2E7F2),
      'border_color': const Color(0xffD2E7F2)
    },
  ];

  final String location = 'Mumbai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomNavigationBar(),
        body: Container(
          margin: EdgeInsets.only(
            left: 25.w,
            top: 52.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topStatic(),
              Wrap(spacing: 27.49.w, runSpacing: 16.72.h, children: [
                for (var i = 0; i < locations.length; i++)
                  SelectLocationTab(location: locations[i]),
              ]),
              Container(
                margin: EdgeInsets.only(top: 16.05.h),
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 1.w,
                  indent: 15.w,
                  endIndent: 40.w,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.05.h),
                child: Text('Food Type',
                    style: TextStyle(fontSize: 12.h, color: Colors.grey[600])),
              ),
              SizedBox(
                width: 325.w,
                height: 360.h,
                child: GridView(
                  physics: const ScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.88,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 12.h,
                  ),
                  children: [
                    for (var i = 0; i < categories.length; i++)
                      FoodTypeItem(category: categories[i]),
                  ],
                ),
              ),
              endButton()
            ],
          ),
        ));
  }

  Container endButton() {
    return Container(
              margin: EdgeInsets.only(top: 15.05.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 50.48.h,
                      width: 120.w,
                      child: OutlinedButton(
                        onPressed: () {},
                        // make button white
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.w),
                            )),
                        child: Text('Cancel',
                            style: TextStyle(
                                fontSize: 11.h, color: Colors.orange)),
                      )),
                  SizedBox(
                    width: 12.2.w,
                  ),
                  SizedBox(
                      height: 50.48.h,
                      width: 151.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.w),
                            )),
                        child: Text(
                          'Show Results (200)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11.h, color: Colors.white),
                        ),
                      )),
                ],
              ),
            );
  }

  Column topStatic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filters',
          style: TextStyle(
            fontSize: 30.h,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6.5.h,
        ),
        Text(
          'Locality/Project/landmark',
          style: TextStyle(fontSize: 12.h, color: const Color(0xff232738)),
        ),
        SizedBox(
          height: 10.77.h,
        ),
      ],
    );
  }
}

class FoodTypeItem extends StatelessWidget {
  const FoodTypeItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 160.w,

      //add border radius of 18px
      decoration: BoxDecoration(
        color: category['color'],
        borderRadius: BorderRadius.all(Radius.circular(18.w)),
        border: Border.all(
          color: category['border_color'],
          width: 1.w,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            category['image'],
            width: 102.71.w,
            height: 71.3.h,
          ),
          Text(category['name'],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.h,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class SelectLocationTab extends StatefulWidget {
  SelectLocationTab({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;
  Color _color = const Color(0xffF5F5F5);
  IconData _icon = Icons.add;
  Color _button_text_color = const Color(0xff6B6D81);
  bool checked = false;

  @override
  State<SelectLocationTab> createState() => _SelectLocationTabState();
}

class _SelectLocationTabState extends State<SelectLocationTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (!widget.checked) {
            widget._color = Color(0xffFE724C);
            widget._icon = Icons.close;
            widget._button_text_color = const Color(0xffFFFFFF);
            widget.checked = true;
          } else {
            widget._color = const Color(0xffF5F5F5);
            widget._icon = Icons.add;
            widget._button_text_color = const Color(0xff6B6D81);
            widget.checked = false;
          }
        });
      },
      child: Container(
        height: 30.28.h,
        width: 92.51.w,
        decoration: BoxDecoration(
          //add a grey thin border to the conatiner
          // add a borde radius of 10
          borderRadius: const BorderRadius.all(Radius.circular(3.59)),
          border: Border.all(
            color: const Color(0xffD9D9D9),
            width: 1.w,
          ),
          color: widget._color,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.location,
            //text with grey color
            style:
                TextStyle(color: widget._button_text_color, fontSize: 12.05.h),
          ),
          SizedBox(
            width: 2.w,
          )
          //add a icon
          ,
          Icon(
            widget._icon,
            size: 15.h,
            color: widget._button_text_color,
          )
        ]),
      ),
    );
  }
}
