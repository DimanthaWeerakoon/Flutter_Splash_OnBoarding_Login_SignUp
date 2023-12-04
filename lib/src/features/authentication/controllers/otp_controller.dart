import 'package:full_app/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepostory.instance.verifyOTP(otp);

    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}