import 'package:firebase/controller/signupcontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: FormHeight-10),
      child:  Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
                decoration: const InputDecoration(
                    label: Text('Full Name'),
                    prefixIcon: Icon(Icons.person_outline_outlined)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                    label: Text('E-Mail'),
                    prefixIcon: Icon(Icons.email_outlined)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(

                controller: controller.phoneNo,
                decoration: const InputDecoration(
                    label: Text('Phone Number'),
                    prefixIcon: Icon(Icons.numbers)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(

                controller: controller.password,
                decoration: const InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.fingerprint)
                )
            ),
            const SizedBox(height: FormHeight-10),
            SizedBox(width: double.infinity ,
                child: ElevatedButton(onPressed: () {
                  if(_formkey.currentState!.validate()){
                      SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                        controller.password.text.trim(),
                      );
                  }
                },
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(Signup.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
