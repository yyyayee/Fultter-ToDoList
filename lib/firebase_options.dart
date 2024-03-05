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
    apiKey: 'AIzaSyD_4NcijaZaSM5bbD3Z3YUuQUkWqyP1iaw',
    appId: '1:203945631261:web:ea60076fd71ab45b5730f4',
    messagingSenderId: '203945631261',
    projectId: 'flutterauthen-56a78',
    authDomain: 'flutterauthen-56a78.firebaseapp.com',
    storageBucket: 'flutterauthen-56a78.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATNR11yTn3XBd7cr2ROVsowN6e4Wx8zbU',
    appId: '1:203945631261:android:f5892c9e933fe1f05730f4',
    messagingSenderId: '203945631261',
    projectId: 'flutterauthen-56a78',
    storageBucket: 'flutterauthen-56a78.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrNmri7HC6jKCQjZxPyh5xF3De1WioKqo',
    appId: '1:203945631261:ios:21ab32973f79971e5730f4',
    messagingSenderId: '203945631261',
    projectId: 'flutterauthen-56a78',
    storageBucket: 'flutterauthen-56a78.appspot.com',
    iosBundleId: 'com.example.onboardingScreen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrNmri7HC6jKCQjZxPyh5xF3De1WioKqo',
    appId: '1:203945631261:ios:0da21dc151ab18fe5730f4',
    messagingSenderId: '203945631261',
    projectId: 'flutterauthen-56a78',
    storageBucket: 'flutterauthen-56a78.appspot.com',
    iosBundleId: 'com.example.onboardingScreen.RunnerTests',
  );
}
