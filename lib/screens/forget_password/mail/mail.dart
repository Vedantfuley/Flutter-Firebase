import 'package:firebase/common_widgets/form_header_widget.dart';
import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: DefaultSize * 4,),
               FormHeaderWidget(
                  image1: Forget,
                  title1: ForgetPasswordTitle,
                  subtitle1: ForgetPasswordSubTitle,
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
                    SizedBox(width: double.infinity, child: ElevatedButton(
                      onPressed: () {},
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
