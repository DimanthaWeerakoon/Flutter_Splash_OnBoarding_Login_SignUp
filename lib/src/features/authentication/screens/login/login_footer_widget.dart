import 'package:flutter/material.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class TLoginFooterWidget extends StatelessWidget {
  const TLoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => TSignUpScreen());
            },
            child: Text.rich(TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                    text: tSignUp,
                    style: TextStyle(color: Colors.blue),
                  )
                ])))
      ],
    );
  }
}
