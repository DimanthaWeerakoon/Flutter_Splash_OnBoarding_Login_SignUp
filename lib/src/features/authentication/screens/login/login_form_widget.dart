import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/controllers/signin_controller.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_options/forgot_password_modal_bottam_sheet.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    final formKey = GlobalKey<FormState>();
    return Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  controller: controller.email,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                  )),
              const SizedBox(
                height: textButtonHeight,
              ),
              TextFormField(
                  controller: controller.password,
                  obscureText: true,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint_outlined),
                      labelText: tPassword,
                      hintText: tPassword,
                      suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp),
                      ))),
              const SizedBox(
                height: textButtonHeight,
              ),

              //-- FORGOT PASSWORD BUTTON
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        TForgotPasswordScreen.buildShowModalBottomSheet(
                            context);
                      },
                      child: const Text(tForgotPassword))),
              //-- LOGIN BUTTON
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          SignInController.instance.logingUser(
                              controller.email.text.trim(),
                              controller.password.text.trim()
                          );
                        }
                      },
                      child: Text(tLogin.toUpperCase())))
            ],
          ),
        ));
  }
}
