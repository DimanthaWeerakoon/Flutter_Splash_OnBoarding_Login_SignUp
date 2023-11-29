import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/features/authentication/screens/signup/signup_screen.dart';
// import 'package:full_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:full_app/src/utils/theme/theme.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

import '../login/login_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;


    return Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        body: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage(tWelcomeSreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(tWelcomeTitle,
                          style: Theme.of(context).textTheme.headline2  , ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => const TLoginScreen()),
                            child: Text(
                              tLogin.toUpperCase(),
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () =>Get.to(() => const TSignUpScreen()) , child: Text(tSignUp.toUpperCase())),
                      )
                    ],
                  )
                ])));
  }
}
