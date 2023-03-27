

import 'package:firebase/screens/Liquid_swipe.dart';
import 'package:firebase/screens/welcome_screen.dart';
import 'package:get/get.dart';

class  FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;
  Future StartSplashAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() =>  WelcomeScreen());
  }
  Future StartAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
  }

}