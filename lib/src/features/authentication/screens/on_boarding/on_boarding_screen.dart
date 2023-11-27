import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:full_app/src/features/authentication/controllers/on_boarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
        
    final obController = OnBoardingController();
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      LiquidSwipe(
        pages: obController.pages,
        liquidController: obController.controller,
        slideIconWidget: const Icon(Icons.arrow_back_ios_new),
        onPageChangeCallback: obController.onPageChangeCallback,
        enableSideReveal: true,
      ),
      Positioned(
          bottom: 60.0,
          child: OutlinedButton(
            onPressed: () => obController.animateToNextSlide(),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xff272727), shape: BoxShape.circle),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          )),
          Positioned(
            top: 50, 
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),)),
          Obx(()=> Positioned(
              bottom: 15,
              child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: obController.currentPage.value,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0
              )
              
            )),
          )
    ]));
  }



  

}
