import 'package:flutter/material.dart';
import 'package:waste_not/models/food.dart';

import '../widgets/foodWidgets.dart';

class Food extends StatelessWidget {
  const Food({required this.food, Key? key}) : super(key: key);
  // int borderRadius = 12;
  final FoodModel food;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String foodName = food.title;
    String foodDescription = food.description;
    String foodLocation = food.location;
    double foodRating = food.rating;
    String des = food.description;
    // make a list of strings
    List<String> addOn = [
      'https://source.unsplash.com/random/300%C3%97300/?milk',
      'https://source.unsplash.com/random/300%C3%97300/?food',
      'https://source.unsplash.com/random/300%C3%97300/?fruits',
      'https://source.unsplash.com/random/300%C3%97300/?pizza'
    ];
    return Scaffold(
      //make a row with Image at top and cards below it
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.03,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: width * 0.0212,
          runSpacing: width * 0.0212,
          children: [
            ImageDisplay(height: height, width: width, link: food.imageUrl),
            NameContainer(
              width: width,
              height: height,
              foodName: foodName,
              foodDescription: foodDescription,
              foodLocation: foodLocation,
              foodRating: foodRating,
              foodServes: food.quantity,
            ),
            FoodDetails(height: height, des: des),
            AddOn(width: width, height: height, addOn: addOn),
            // make a green button with circular border saying 'Send Request'

            Button(width: width, height: height),
          ],
        ),
      ),
    );
  }
}
