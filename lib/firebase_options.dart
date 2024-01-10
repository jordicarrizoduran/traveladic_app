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
    apiKey: 'AIzaSyCa7Q0ng9Fp8ZcUQRHVRwLWsclVNSd1F6w',
    appId: '1:307542474803:web:3c0628bf3ad5a8d2c3e346',
    messagingSenderId: '307542474803',
    projectId: 'traveladic-bb374',
    authDomain: 'traveladic-bb374.firebaseapp.com',
    storageBucket: 'traveladic-bb374.appspot.com',
    measurementId: 'G-S086T0VLD0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFzg08yiLN8sF3-DjT3zSEJOv8DwmCwqs',
    appId: '1:307542474803:android:f6d3a6e491306649c3e346',
    messagingSenderId: '307542474803',
    projectId: 'traveladic-bb374',
    storageBucket: 'traveladic-bb374.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCov_SMq8jnJPMbEzeIxwyWqwCyF1-rok',
    appId: '1:307542474803:ios:3999a548713da833c3e346',
    messagingSenderId: '307542474803',
    projectId: 'traveladic-bb374',
    storageBucket: 'traveladic-bb374.appspot.com',
    iosBundleId: 'com.example.traveladicApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCov_SMq8jnJPMbEzeIxwyWqwCyF1-rok',
    appId: '1:307542474803:ios:ad7cd0e2df721913c3e346',
    messagingSenderId: '307542474803',
    projectId: 'traveladic-bb374',
    storageBucket: 'traveladic-bb374.appspot.com',
    iosBundleId: 'com.example.traveladicApp.RunnerTests',
  );
}