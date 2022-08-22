


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
      'isActive': isActive,
      'userID': user.toMap(),
      'rating': rating,
      'location': location,
      'isActive': isActive,
      
    };
  }

 

 
}


// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);






