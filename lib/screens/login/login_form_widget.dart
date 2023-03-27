

import 'package:firebase/constants/text_strings.dart';
import 'package:firebase/screens/login/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/sizes.dart';
import '../forget_password/options/forget_password_btn_widget.dart';
import '../forget_password/options/forget_password_model_bottomsheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: 'E-Mail',
              hintText: 'E-Mail',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: 'Password',
              hintText: 'Password',
              border: OutlineInputBorder(
              ),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
                child: Text('Forget Password?'),
              )),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(()=>dashboard());
              },
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(primary: Colors.black),),
          )
        ],
      ),
    );
  }


}
