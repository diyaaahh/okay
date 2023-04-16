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
    apiKey: 'AIzaSyB-rigWK9-1QAqK0P4X2Nh9Bm0tdG5VUoQ',
    appId: '1:931418144889:web:6ddd60487d12fdbad154a8',
    messagingSenderId: '931418144889',
    projectId: 'trial-d954b',
    authDomain: 'trial-d954b.firebaseapp.com',
    storageBucket: 'trial-d954b.appspot.com',
    measurementId: 'G-12856G57K7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmoCyanGGRy0MCujCH5Wyt02Hz0vUD2M8',
    appId: '1:931418144889:android:4fd0c22d728093add154a8',
    messagingSenderId: '931418144889',
    projectId: 'trial-d954b',
    storageBucket: 'trial-d954b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDhS5xB2-ZNHb6iWwEs3uS3vIP8TTOQEM',
    appId: '1:931418144889:ios:751a17bda16ac23fd154a8',
    messagingSenderId: '931418144889',
    projectId: 'trial-d954b',
    storageBucket: 'trial-d954b.appspot.com',
    iosClientId: '931418144889-odi3vehf3o98c51gimjdtc3dev77oo94.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDhS5xB2-ZNHb6iWwEs3uS3vIP8TTOQEM',
    appId: '1:931418144889:ios:751a17bda16ac23fd154a8',
    messagingSenderId: '931418144889',
    projectId: 'trial-d954b',
    storageBucket: 'trial-d954b.appspot.com',
    iosClientId: '931418144889-odi3vehf3o98c51gimjdtc3dev77oo94.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}