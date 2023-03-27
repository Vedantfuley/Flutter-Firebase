import 'package:firebase/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:firebase/screens/Liquid_swipe.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../constants/colors.dart';
import '../constants/image_strings.dart';
import '../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding_screen.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;
  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: Image1,
        subtitle: Text1,
        countertext: Counter1,
        bgcolor: Page1,
      ),
    ),

    OnBoardingPage(
      model: OnBoardingModel(
        image: Image2,
        subtitle: Text2,
        countertext: Counter2,
        bgcolor: Page2,
      ),
    ),

    OnBoardingPage(
      model: OnBoardingModel(
        image: Image3,
        subtitle: Text3,
        countertext: Counter3,
        bgcolor: Page3,
      ),
    ),
  ];


  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  Future StartAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(WelcomeScreen());
  }

}
