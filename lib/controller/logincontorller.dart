import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../autentication/authentication_repository.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password){
    Authentication.instance.LoginWithEmailAndPassword(email, password);
  }
}