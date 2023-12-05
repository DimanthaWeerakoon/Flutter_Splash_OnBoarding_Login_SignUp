import 'package:full_app/src/features/authentication/models/user_model.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:full_app/src/repository/authentication_respository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  /// Get User Email and PW to UserRepository to fetch user record.
  
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
        return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }


  Future<List<UserModel>> getAllUser() async {
    // final snapshot = await _db.collection("Users").get();
    // final userData = snapshot.docs.map((e) => UserModel.fromSnapShot(e)).toList();
    return await _userRepo.allUser();
  }
  
  

}