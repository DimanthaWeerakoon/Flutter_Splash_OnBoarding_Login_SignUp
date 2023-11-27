import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:full_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

import '../../../constants/text_strings.dart';

class OnBoardingController extends GetxController {

  
  final controller = LiquidController();
  RxInt currentPage = 0.obs;


  final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage1,
              title: tOnBoardingTitle1,
              subTitle: tOnBoardingSubTitle1,
              counterText: tOnBoardingCounter1,
              // height: size.height,
              bgColor: tOnBoardingPage1Color)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage2,
              title: tOnBoardingTitle2,
              subTitle: tOnBoardingSubTitle2,
              counterText: tOnBoardingCounter2,
              // height: size.height,
              bgColor: tOnBoardingPage2Color)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: tOnBoardingImage3,
              title: tOnBoardingTitle3,
              subTitle: tOnBoardingSubTitle3,
              counterText: tOnBoardingCounter3,
              // height: size.height,
              bgColor: tOnBoardingPage3Color))
    ];

  onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  OnPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
}