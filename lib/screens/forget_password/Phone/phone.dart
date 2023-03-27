import 'package:firebase/common_widgets/form_header_widget.dart';
import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/screens/forget_password/OTP/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/sizes.dart';

class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: DefaultSize * 4,),
              FormHeaderWidget(
                image1: Forget,
                title1: OTPtitle,
                subtitle1: msg1,
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
                        label: Text(Phone),
                        hintText: Phone,
                        prefixIcon: Icon(Icons.mobile_friendly_rounded),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(width: double.maxFinite,
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
