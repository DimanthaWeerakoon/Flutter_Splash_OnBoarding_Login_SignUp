import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:full_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:full_app/src/repository/authentication_respository/exceptions/signup_email_password_failure.dart';
import 'package:get/get.dart';

class AuthenticationRepostory extends GetxController {
  static AuthenticationRepostory get instance => Get.find();

  //Variable

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - $ex.message');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailPasswordFailure();
      print('EXCEPTION -${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
