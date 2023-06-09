// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD8oVoY6sq8RvTE779YYclWWREjXpkltmY',
    appId: '1:673162425847:web:fdff3a8d37e91e2140eaf2',
    messagingSenderId: '673162425847',
    projectId: 'flutter-firebase-43a22',
    authDomain: 'flutter-firebase-43a22.firebaseapp.com',
    storageBucket: 'flutter-firebase-43a22.appspot.com',
    measurementId: 'G-HYCSHSWFP9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpXBQOVloVV2HfJWmQDVV9XpN-dYRHQXo',
    appId: '1:673162425847:android:5a141858084ad02140eaf2',
    messagingSenderId: '673162425847',
    projectId: 'flutter-firebase-43a22',
    storageBucket: 'flutter-firebase-43a22.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGBhU9_8tf5x15XAY4MWkVKqFGquZlRL4',
    appId: '1:673162425847:ios:c61bebde816a2e0f40eaf2',
    messagingSenderId: '673162425847',
    projectId: 'flutter-firebase-43a22',
    storageBucket: 'flutter-firebase-43a22.appspot.com',
    iosClientId: '673162425847-bu8ucfm5os8tna3fjn2nmepbn4ml5me4.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGBhU9_8tf5x15XAY4MWkVKqFGquZlRL4',
    appId: '1:673162425847:ios:c61bebde816a2e0f40eaf2',
    messagingSenderId: '673162425847',
    projectId: 'flutter-firebase-43a22',
    storageBucket: 'flutter-firebase-43a22.appspot.com',
    iosClientId: '673162425847-bu8ucfm5os8tna3fjn2nmepbn4ml5me4.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );
}
