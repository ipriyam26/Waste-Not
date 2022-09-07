class UserModel {
  final String name;
  final String email;
  final String username;
  final String photoUrl;
  final String address;
  final String phoneNumber;
  final String gender;
  final int donations;
  final double ratings;

  UserModel({
    required this.name,
    required this.email,
    required this.username,
    required this.photoUrl,
    required this.address,
    required this.phoneNumber,
    required this.gender,
    final this.donations = 0,
    final this.ratings = 0.0,
  });

  factory UserModel.fromJson(Map<String, dynamic> response) {
    return UserModel(
        name: response['name'],
        email: response['email'],
        username: response['username'],
        photoUrl: response['photoUrl'],
        address: response['address'],
        phoneNumber: response['phoneNumber'],
        gender: response['gender'],
        donations: response['donations'],
        ratings: response['ratings'] *1.0
        );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'username': username,
      'photoUrl': photoUrl,
      'address': address,
      'phone': phoneNumber,
      'gender': gender,
      'donations': donations,
      'ratings': ratings,
    };
  }
}
