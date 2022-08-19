import 'package:flutter/material.dart';

import '../widgets/foodWidgets.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);
  // int borderRadius = 12;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String foodName = 'RandomFood Name';
    String foodDescription = 'RandomFood Description';
    String foodLocation = 'RandomFood Location';
    double foodRating = 4.5;
    String des =
        'Best Before 1 day.\nThese chapatis were made on 2-09-2021(yesterday). \nThey are in best condition.';
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
            ImageDisplay(
                height: height,
                width: width,
                link: 'https://source.unsplash.com/random/300%C3%97300/?food'),
            NameContainer(
                width: width,
                height: height,
                foodName: foodName,
                foodDescription: foodDescription,
                foodLocation: foodLocation,
                foodRating: foodRating),
            FoodDetails(height: height, des: des),
            AddOn(width: width, height: height,addOn: addOn),
            // make a green button with circular border saying 'Send Request'
            
            Button(width: width, height: height),
          ],
        ),
      ),
    );
  }


}



