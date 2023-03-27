import 'package:firebase/common_widgets/form_header_widget.dart';
import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/screens/forget_password/OTP/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import "package:flutter/src/material/material_state.dart";
import 'dart:ui';

import '../../../constants/sizes.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: DefaultSize * 3,),
               FormHeaderWidget(
                  image1: Forget,
                  title1: OTPtitle,
                  subtitle1: msg,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 heightBetween: 30,

              ),
              const SizedBox(height: FormHeight,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                      const InputDecoration(
                        label: Text(EMail),
                        hintText: EMail,
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        Get.to(() => OTPScreen());
                      },
                      child: Text("Next"),

                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
