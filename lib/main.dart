import 'package:firebase/firebase_options.dart';
import 'package:firebase/pages/loading.dart';
import 'package:firebase/screens/login/dashboard.dart';
import 'package:firebase/screens/signup/signup_screen.dart';
import 'package:firebase/screens/splash%20screen/splash_screen.dart';
import 'package:firebase/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'autentication/authentication_repository.dart';
import 'screens/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(Authentication()));
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
      '/dash' : (context) => const dashboard(),


    }

  ));
}
