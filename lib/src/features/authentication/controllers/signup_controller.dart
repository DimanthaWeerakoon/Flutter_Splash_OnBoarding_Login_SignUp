import 'package:flutter/material.dart';
import 'package:full_app/src/features/authentication/models/user_model.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:full_app/src/repository/authentication_respository/user_repository/user_repository.dart';
import 'package:get/get.dart';

 class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();


  //TextField Controllers to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  //Call this Function from Design & it will do the rest
  void resgisterUser(String email, String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future <void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    resgisterUser(user.email, user.password);
  }
 }