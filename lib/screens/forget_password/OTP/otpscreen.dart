

import 'package:firebase/constants/image_strings.dart';
import 'package:firebase/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/sizes.dart';

class OTPScreen extends StatelessWidget {
   OTPScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Colors.purple[50],
      body: Container(
        padding: const EdgeInsets.all(DefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image(image: AssetImage(email),height: 250,),
            Text(OTPtitle,style: GoogleFonts.montserrat(
                fontSize: 35,
                fontWeight: FontWeight.bold)

            ),
            SizedBox(height: 40,),
            Text(Message,textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {print("OTP is $code");},
            ),
             const SizedBox(height: 20,),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/dash');
                  },
                  child: const Text("Next")),

            ),
          ],
        ),
      ),
    );
  }
}
