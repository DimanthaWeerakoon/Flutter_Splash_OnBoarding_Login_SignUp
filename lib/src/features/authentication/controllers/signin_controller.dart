import 'package:flutter/material.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:get/get.dart';

 class SignInController extends GetxController {
  static SignInController get instance => Get.find();


  //TextField Controllers to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();

  //Call this Function from Design & it will do the rest
  void logingUser(String email, String password) async {
    try {
      await AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
    } catch (e) {
      print('Login failed: $e');
      // Handle the error as needed
    }
  }
}