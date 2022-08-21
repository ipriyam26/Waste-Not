class UserModel {
  final String name;
  final String email;
  final String username;
  final String photoUrl;
  final String address;
  final String phoneNumber;
  final String gender;

  UserModel(
      {required this.name,
      required this.email,
      required this.username,
      required this.photoUrl,
      required this.address,
      required this.phoneNumber,
      required this.gender,
      });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'username': username,
      'photoUrl': photoUrl,
      'address': address,
      'phone': phoneNumber,
      'gender':gender
    };
  }
}
