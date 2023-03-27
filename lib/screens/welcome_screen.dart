
import 'package:firebase/common_widgets/fade_in_animation/Fade_In_Animation_Model.dart';
import 'package:firebase/common_widgets/fade_in_animation/animation_design.dart';
import 'package:firebase/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:firebase/constants/colors.dart';
import 'package:firebase/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/text_strings.dart';
import '../constants/sizes.dart';
import '../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.StartAnimation();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Stack(
        children: [
          FadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
            leftAfter: 0,
            topAfter: 0,
            topBefore: 0,
            rightAfter: 0,
            rightBefore: 0),
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('img/4498903-removebg-preview.png'),
                  height: height * 0.6,),
                  Column(
                    children: [
                      Text(Title1,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 0),),
                      Text(Subtitle,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            foregroundColor: SecondaryColor,
                            side: BorderSide(color: SecondaryColor),
                            padding: EdgeInsets.symmetric(vertical: ButtonHeight)
                          ),
                          child: Text(Login.toUpperCase()))),
                      const SizedBox(width: 10),
                      Expanded(child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signupscreen');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              shape: RoundedRectangleBorder(),
                              foregroundColor: whiteColor,
                              backgroundColor: SecondaryColor,
                              side: BorderSide(color: SecondaryColor),
                              padding: EdgeInsets.symmetric(vertical: ButtonHeight)
                          ),
                          child: Text(Signup.toUpperCase()))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
