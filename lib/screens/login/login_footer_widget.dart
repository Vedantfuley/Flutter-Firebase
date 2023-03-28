import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../constants/image_strings.dart';
import '../signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
   LoginFooterWidget({
    super.key,
  });
    final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          const Text("OR"),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,

            child: OutlinedButton.icon(icon: Image(image: AssetImage(Google),width: 20,),
                    onPressed: () {
                      _googleSignIn.signIn().then((value) {
                        String username = value!.displayName!;
                        String profilePicture = value!.photoUrl!;
                        Navigator.pushReplacementNamed(context, '/dash');

                      });
                    },
                style: OutlinedButton.styleFrom(primary: Colors.black,onSurface: Colors.black),
                label: Text('Sign-In with Google')),
          ),

          const SizedBox(height: 10),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, '/signupscreen');
          }, child: Text.rich(
              TextSpan(
                text: "Don't have an Account?",
                children: [
                  TextSpan(
                      text: "Sign-Up"
                  ),
                ],
              )
          )),
        ],
      ),
    );
  }
}

