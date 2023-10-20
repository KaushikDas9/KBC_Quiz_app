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
    apiKey: 'AIzaSyDlQU0PKXAsvQSapXXUcHZ6KHT9BudhxQM',
    appId: '1:264908104423:web:35f8dc323c09150483f842',
    messagingSenderId: '264908104423',
    projectId: 'kbc-quiz-app-7badf',
    authDomain: 'kbc-quiz-app-7badf.firebaseapp.com',
    storageBucket: 'kbc-quiz-app-7badf.appspot.com',
    measurementId: 'G-7RJYNK2EGJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_SZDrdBtVqgk1tc0cURo9ktn3qEL2ndY',
    appId: '1:264908104423:android:ead99581cf39836083f842',
    messagingSenderId: '264908104423',
    projectId: 'kbc-quiz-app-7badf',
    storageBucket: 'kbc-quiz-app-7badf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhsPvDkmCU6eZeva9aqeuNE_UUCcNFsL8',
    appId: '1:264908104423:ios:75381306cb94a5aa83f842',
    messagingSenderId: '264908104423',
    projectId: 'kbc-quiz-app-7badf',
    storageBucket: 'kbc-quiz-app-7badf.appspot.com',
    iosBundleId: 'com.example.kbcQuizApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhsPvDkmCU6eZeva9aqeuNE_UUCcNFsL8',
    appId: '1:264908104423:ios:37e15808907a1ce583f842',
    messagingSenderId: '264908104423',
    projectId: 'kbc-quiz-app-7badf',
    storageBucket: 'kbc-quiz-app-7badf.appspot.com',
    iosBundleId: 'com.example.kbcQuizApp.RunnerTests',
  );
}
