import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:full_app/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    try {
      final docRef = await _db.collection("Users").add(user.toJson());
      final UserModel updatedUser = user.copyWith(id: docRef.id);
      await docRef.update(updatedUser.toJson());
      Get.snackbar("Success", "You account has been created.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green);
    } catch (error) {
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    }
  }

  /// Fetch All Users OR User Details
  Future<UserModel> getUserDetails(String email) async {
  final snapshot = await _db.collection("Users").get();
  final userData = snapshot.docs
      .map((e) => UserModel.fromSnapShot(e))
      .firstWhere(
        (user) => user.email.toLowerCase() == email.toLowerCase(),
        orElse: () => UserModel(id: null, email: '', password: '', fullname: '', phoneNo: ''),
      );

  if (userData.id == null) {
    print('User not found for email: $email');
  } else {
    print('User found. ID: ${userData.id}, Email: ${userData.email}');
  }

  return userData;
}

  Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Users").get();
    final userData =
        snapshot.docs.map((e) => UserModel.fromSnapShot(e)).toList();
    return userData;
  }

  Future<void> updateUserRecord(UserModel user) async {
  try {
    // Get the currently logged-in user's email
    final userEmail = _auth.currentUser?.email;

    if (userEmail != null) {
      final snapshot = await _db.collection("Users").where("Email", isEqualTo: userEmail).get();

      if (snapshot.docs.isNotEmpty) {
        final docRef = _db.collection("Users").doc(snapshot.docs.first.id);

        await docRef.update({
          "Fullname": user.fullname,
          "Email": user.email,
          "Phone": user.phoneNo,
          "Password": user.password,
        });
        // Update the document
        // await docRef.update(user.toJson());
        Get.snackbar("Success", "User record updated.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green);
      } else {
        Get.snackbar("Error", "User record not found.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red.withOpacity(0.1),
            colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "User email not available.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.1),
          colorText: Colors.red);
    }
  } catch (error) {
    Get.snackbar("Error", "Something went wrong. Try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red);
    print(error.toString());
  }
}

}
