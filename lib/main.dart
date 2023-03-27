import 'package:firebase/pages/loading.dart';
import 'package:firebase/screens/signup/signup_screen.dart';
import 'package:firebase/screens/splash%20screen/splash_screen.dart';
import 'package:firebase/themes/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/login/login_screen.dart';

void main() {
  runApp(GetMaterialApp(
      theme: AppTheme.LightTheme,
    darkTheme: AppTheme.DarkTheme,
    themeMode: ThemeMode.light,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
    home: SplashScreens(),

    routes: {
        '/signupscreen': (context) => const SignUpScreen(),
        '/Login' : (context) => const LoginScreen(),
    }

  ));
}
