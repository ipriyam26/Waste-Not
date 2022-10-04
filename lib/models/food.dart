


class UserLocal {
  String userId;
  int donations;
  String image;

  UserLocal({
    required this.userId,
    required this.donations,
    required this.image,
  });
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'donations': donations,
      'image': image,
    };
  }
}

class FoodModel {

 
  FoodModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.quantity,
    required this.user,
    required this.location,
    required this.isActive,
    required this.postedTime,
    required this.rating
  });
  final String title;
  final String description;
  final int quantity;
  final String imageUrl;
  final int postedTime;
  final double latitude;
  final double longitude;
  final bool isActive;
  final UserLocal user;
  final double rating ;
  final String location;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'quantity': quantity,
      'imageUrl': imageUrl,
      'postedTime': postedTime,
      'latitude': latitude,
      'longitude': longitude,
      'userID': user.toMap(),
      'rating': rating,
      'location': location,
      'isActive': isActive,
      
    };
  }
factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      title: map['title'],
      description: map['description'],
      quantity: map['quantity'],
      imageUrl: map['imageUrl'],
      postedTime: map['postedTime'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      user: UserLocal(
        userId: map['userID']['userId'],
        donations: map['userID']['donations'],
        image: map['userID']['image'],
      ),
      rating: map['rating'],
      location: map['location'],
      isActive: map['isActive'],
    );

        // title: food['title'],
        //   description: food['description'],
        //   imageUrl: food['imageUrl'],
        //   latitude: food['latitude'],
        //   longitude: food['longitude'],
        //   quantity: food['quantity'],
        //   user: UserLocal(
        //     userId: food['userID']['userId'],
        //     donations: food['userID']['donations'],
        //     image: food['userID']['image'],
        //   ),
        //   location: food['location'],
        //   isActive: food['isActive'],
        //   postedTime: food['postedTime'],
        //   rating: food['rating']
          
  }
 

 
}


// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);






