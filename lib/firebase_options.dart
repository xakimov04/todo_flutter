// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAT-0zf8EATSTCWTqw_bx0sAKkVfLyRHEM',
    appId: '1:193500423191:web:bc0825417457d33f182852',
    messagingSenderId: '193500423191',
    projectId: 'todo-flutter-47bc9',
    authDomain: 'todo-flutter-47bc9.firebaseapp.com',
    storageBucket: 'todo-flutter-47bc9.appspot.com',
    measurementId: 'G-9VGZ5SXLXP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAT-ejKMt-CEmHY8SKQfKWd0iLiXxEzNAY',
    appId: '1:193500423191:android:575339fb92685d9e182852',
    messagingSenderId: '193500423191',
    projectId: 'todo-flutter-47bc9',
    storageBucket: 'todo-flutter-47bc9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCashehjQbL98j5pWkUZpQLdeA9Io442UY',
    appId: '1:193500423191:ios:fe369c019b105b91182852',
    messagingSenderId: '193500423191',
    projectId: 'todo-flutter-47bc9',
    storageBucket: 'todo-flutter-47bc9.appspot.com',
    iosBundleId: 'com.example.todoFlutter',
  );
}
