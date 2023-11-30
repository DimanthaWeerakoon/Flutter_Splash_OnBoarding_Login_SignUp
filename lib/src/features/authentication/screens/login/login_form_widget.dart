import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_options/forget_password_btn_widget.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_options/forgot_password_modal_bottam_sheet.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,           
              )
            ),
            const SizedBox(
              height: textButtonHeight,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: tPassword,
                hintText: tPassword, 
                suffixIcon: IconButton(
                  onPressed: null, 
                  icon: Icon(Icons.remove_red_eye_sharp),
                  )
              )
            ),
            const SizedBox(height: textButtonHeight,),

          //-- FORGOT PASSWORD BUTTON
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  TForgotPasswordScreen.buildShowModalBottomSheet(context);
                }, 
                child: const Text(tForgotPassword))),
          //-- LOGIN BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(tLogin.toUpperCase())))

          ],
        ),
      )
    );
  }

}
