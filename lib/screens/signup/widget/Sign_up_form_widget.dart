import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: FormHeight-10),
      child:  Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    label: Text('Full Name'),
                    prefixIcon: Icon(Icons.person_outline_outlined)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(
                decoration: const InputDecoration(
                    label: Text('E-Mail'),
                    prefixIcon: Icon(Icons.email_outlined)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(
                decoration: const InputDecoration(
                    label: Text('Phone Number'),
                    prefixIcon: Icon(Icons.numbers)
                )
            ),
            SizedBox(height: FormHeight-10),
            TextFormField(
                decoration: const InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.fingerprint)
                )
            ),
            const SizedBox(height: FormHeight-10),
            SizedBox(width: double.infinity ,
                child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(Signup.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
