import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/user.dart';

class UserController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final user = UserModel(
          name: "",
          email: "",
          username: "",
          photoUrl: "",
          address: "",
          phoneNumber: "",
          gender: "")
      .obs;

  @override
  Future<void> onInit() async {
    // get user id from firestore firebase
    // await updateUser();
    super.onInit();
  }

  @override
  void onReady() async {
    await updateUser();
    super.onReady();
  }

  Future<void> updateUser() async {
    User me = _auth.currentUser!;
    // get user data from firebase

    CollectionReference userRef =
        FirebaseFirestore.instance.collection('users');
    var response = await userRef.doc(me.uid).get();
    var userData = response.data() as Map<String, dynamic>;
    user.value = UserModel.fromJson(userData);
    user.refresh();
    update();
  }

  // get name
  String get name => user.value.name;
}
