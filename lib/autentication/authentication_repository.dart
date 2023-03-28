

import 'package:firebase/autentication/Signup_email_password.dart';
import 'package:firebase/autentication/failure.dart';
import 'package:firebase/screens/Liquid_swipe.dart';
import 'package:firebase/screens/splash%20screen/splash_screen.dart';
import 'package:firebase/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

import '../screens/login/dashboard.dart';

class Authentication extends GetxController{
  static Authentication get instance => Get.find();

final _auth = FirebaseAuth.instance;
late final Rx<User?> firebaseUser;

@override
  void onReady() {
  firebaseUser = Rx<User?>(_auth.currentUser);
  firebaseUser.bindStream(_auth.userChanges());
  ever(firebaseUser, _setInitialScreen);

  }



  _setInitialScreen(User? user) {
   Get.offAll(()=>  SplashScreens());
  }

  Future<void> createUserEmailAndPassword(String email, String password) async {
  try{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    firebaseUser.value != null ? Get.offAll(() => const dashboard()) : Get.to(() => WelcomeScreen());
  }on FirebaseAuthException catch(e){
    final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
    print('FIREBASE AUTH EXCEPTION - ${ex.messgae}');
    throw ex;
  }catch(_){
    const ex = SignUpWithEmailAndPasswordFailure();
    print('EXCEPTION - ${ex.messgae}');
    throw ex;
  }
  }

  Future<void> LoginWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const dashboard()) : Get.to(() => WelcomeScreen());
    }on FirebaseAuthException catch(e){
      final ex = LoginWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.messages}');
      throw ex;
    }catch(_){
      const ex = LoginWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.messages}');
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();
}