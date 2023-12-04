import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class TSignUpFormWidget extends StatelessWidget {
  const TSignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                    label: Text(tFullName),
                    hintText: tFullName,
                    prefixIcon: Icon(Icons.person_outline_outlined)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                    label: Text(tEmail),
                    hintText: tEmail,
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: controller.phoneNo,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    label: Text(tPhoneNumber),
                    hintText: tPhoneNumber,
                    prefixIcon: Icon(Icons.phone_rounded)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                    label: Text(tPassword),
                    hintText: tPassword,
                    prefixIcon: Icon(Icons.fingerprint_rounded)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                        // Get.to(() => const TOTPScreen());
                        SignUpController.instance.resgisterUser(
                            controller.email.text.trim(),
                            controller.password.text.trim(),
                            controller.phoneNo.text.trim(),
                            controller.fullName.text.trim());
                      }
                    },
                    child: Text(tSignUp.toUpperCase())),
              ),
            ],
          ),
        ));
  }
}
