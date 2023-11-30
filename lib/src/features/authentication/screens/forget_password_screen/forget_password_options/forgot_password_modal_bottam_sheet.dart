import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_mail/forget_password_mail.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_options/forget_password_btn_widget.dart';
import 'package:full_app/src/features/authentication/screens/forget_password_screen/forget_password_phone/forgot_password_phone.dart';
import 'package:get/get.dart';

class TForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgotPasswordTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(tForgotPasswordTitle,
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(
              height: 30.0,
            ),
            TForgotPasswordButtonWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const TForgotPasswordMailScreen()); 
                },
              btnIcon: Icons.mail_outline_outlined,
              title: tEmail,
              subTitle: tResetViaEMail,
            ),
            const SizedBox(height: 20.0),
            TForgotPasswordButtonWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const TForgotPasswordPhoneScreen());
              },
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNumber,
              subTitle: tResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
