
import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/sizes.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(DefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                LoginHeaderWidget(size: size),

                SizedBox(height: 20),

                const LoginForm(),
                LoginFooterWidget(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}



