

import 'package:meta/meta.dart';
import 'dart:convert';

List<FoodModel> foodModelFromJson(String str) => List<FoodModel>.from(json.decode(str).map((x) => FoodModel.fromJson(x)));

String foodModelToJson(List<FoodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class FoodModel {
  FoodModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.quantity,
    required this.userID,
    required this.isActive,
  });
  final String title;
  final String description;
  final int quantity;
  final String imageUrl;
  final DateTime postedTime = DateTime.now();
  final double latitude;
  final double longitude;
  final bool isActive;
  final String userID;

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
      'userID': userID,
    };
  }
      factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        title: json["title"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        quantity: json["quantity"],
        userID: json["userID"],
        isActive: json["isActive"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "imageUrl": imageUrl,
        "latitude": latitude,
        "longitude": longitude,
        "quantity": quantity,
        "userID": userID,
        "isActive": isActive,
    };
}


// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);






