import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../mail/mail.dart';
import 'forget_password_btn_widget.dart';


class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (context) =>
            Container(
              padding: EdgeInsets.all(DefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ForgetPasswordTitle),
                  Text(ForgetPasswordSubTitle),
                  const SizedBox(height: 30,),
                  forgetpasswordwidget(
                      btnIcon: Icons.mail_outline_outlined,
                      title2: EMail,
                      subtitle2: ResetviaEmail,
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(() => const ForgetPasswordMail());
                      }),
                  const SizedBox(height: 20,),
                  forgetpasswordwidget(
                      btnIcon: Icons.mobile_friendly_rounded,
                      title2: Phone,
                      subtitle2: ResetviaPhone,
                      onTap: () {}),


                ],
              ),
            ));
  }

}