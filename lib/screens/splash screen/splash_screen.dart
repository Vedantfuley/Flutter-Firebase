


import 'package:firebase/common_widgets/fade_in_animation/Fade_In_Animation_Model.dart';
import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreens extends StatelessWidget {
   SplashScreens({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.StartSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(durationInMs: 1600,
              animate: TAnimatePosition(
                topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0,
              ),
              child: Container(
                height: 110,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
              )),

          FadeInAnimation(
              durationInMs: 2000,
               animate: TAnimatePosition(
                 topBefore: 80,
                 topAfter: DefaultSize,
                 leftBefore: -80,
               ),
               child: Container(
               height: 110,
               width: 260,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent,
                ),
    ),
    ),

          FadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(
                  topBefore: 80,
                topAfter: DefaultSize,
                ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppName,style: TextStyle(
                      fontSize: 30,),),
                    Text(AppTagLine,style:
                    TextStyle(
                      fontSize: 50,
                      letterSpacing: 2,
                    ),
                    ),
                  ],
                ),
              ),

          FadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 100),
            child:  Image.asset(SplashImage),
          ),


        FadeInAnimation(
          durationInMs: 2400,
          animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: DefaultSize,
              rightAfter: DefaultSize),
          child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.greenAccent,
                  ),
                )),
    ],
      ),
    );
  }
}
