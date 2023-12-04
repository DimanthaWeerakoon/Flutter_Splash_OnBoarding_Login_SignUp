import 'package:flutter/material.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:get/get.dart';

 class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();


  //TextField Controllers to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from Design & it will do the rest
  void resgisterUser(String email, String password) {
    AuthenticationRepostory.instance.createUserWithEmailAndPassword(email, password);

  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepostory.instance.phoneAuthentication(phoneNo);
  }
 }