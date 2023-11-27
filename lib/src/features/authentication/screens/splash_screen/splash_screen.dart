import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:full_app/src/features/authentication/controllers/splash_screen_controller.dart';
// import 'package:full_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());
  


  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -100,
              left: splashController.animate.value ?0  : -100,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(tSplashIcon),
                  width: 120,
                  height: 120,
                        ),
              )),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 120,
              left: splashController.animate.value ? 20 : -250,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  children: [
                  Text(tAppName, style: Theme.of(context).textTheme.headlineMedium,)
                  ]
                ),
              )
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 100 : -300,
              // left: animate ? 100 : -300,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(tSplashImage), 
                  width: 394,
                  height: 500,
                ),
              )
            ),
          ),
            Obx( () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashController.animate.value ? 50 : -50,
                right: tDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: tPrimaryColor,
                    ),
                            ),
                )
                      ),
            )
        ],
      ),
    );
  }

  


}
