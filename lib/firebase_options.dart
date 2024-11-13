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
    apiKey: 'AIzaSyAiKeEzR0NPJQgBr7RdYk4t9rYRzOpTX7g',
    appId: '1:582259882959:web:213f352ac1b6100d2b30ba',
    messagingSenderId: '582259882959',
    projectId: 'akulbiti-b9059',
    authDomain: 'akulbiti-b9059.firebaseapp.com',
    storageBucket: 'akulbiti-b9059.firebasestorage.app',
    measurementId: 'G-C7ZRL4GPRB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJmeszwuHcSp2X2Bg5IfHLLgf6nAqSNIw',
    appId: '1:582259882959:android:5c9639a3c3c687ab2b30ba',
    messagingSenderId: '582259882959',
    projectId: 'akulbiti-b9059',
    storageBucket: 'akulbiti-b9059.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJaKNMhAKRs8jARy0fWlLG5RffxLrTTlM',
    appId: '1:582259882959:ios:80b8aae348a6b9132b30ba',
    messagingSenderId: '582259882959',
    projectId: 'akulbiti-b9059',
    storageBucket: 'akulbiti-b9059.firebasestorage.app',
    iosBundleId: 'com.example.akulbiti',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJaKNMhAKRs8jARy0fWlLG5RffxLrTTlM',
    appId: '1:582259882959:ios:41f55e54157ea5f42b30ba',
    messagingSenderId: '582259882959',
    projectId: 'akulbiti-b9059',
    storageBucket: 'akulbiti-b9059.firebasestorage.app',
    iosBundleId: 'com.example.akulbiti.RunnerTests',
  );
}