

import 'package:firebase/common_widgets/form_header_widget.dart';
import 'package:firebase/constants/colors.dart';
import 'package:firebase/screens/signup/widget/Sign_up_form_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[50],
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(DefaultSize),
            child: Column(
              children: [
                    FormHeaderWidget(
                        image1: WelcomeScreenPage,
                        title1: SignUpSubtitle,
                        subtitle1: '',

                    ),
                SignUpFormWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(onPressed: () {},
                          style: OutlinedButton.styleFrom(primary: Colors.black),
                          icon: Image(image: AssetImage(Google),width: 20,),
                        label: Text(Google2.toUpperCase()),
                    )
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Login');
                        },
                        child: Text.rich(
                            TextSpan(
                                children:[
                                  TextSpan(text: AlreadyHaveAnAccount,),
                                  TextSpan(text:Login.toUpperCase()),
                                ] )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

