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
        return windows;
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
    apiKey: 'AIzaSyBkzq4mgGxrwif9XFkX9DDR12IYIZSF08k',
    appId: '1:929006144027:web:44c327ac54cd71406046be',
    messagingSenderId: '929006144027',
    projectId: 'akl-beti',
    authDomain: 'akl-beti.firebaseapp.com',
    storageBucket: 'akl-beti.firebasestorage.app',
    measurementId: 'G-1JEF9VN2BX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJMKmaAkwpeeix-YQadGYfqFJPRJUCjJc',
    appId: '1:929006144027:android:a9b87f074b3c95366046be',
    messagingSenderId: '929006144027',
    projectId: 'akl-beti',
    storageBucket: 'akl-beti.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDw2Ef2hv-rn1mEnsj_QTidOmhDb942RQ',
    appId: '1:929006144027:ios:4c490b80b58d0d126046be',
    messagingSenderId: '929006144027',
    projectId: 'akl-beti',
    storageBucket: 'akl-beti.firebasestorage.app',
    iosBundleId: 'com.example.akulbiti',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDw2Ef2hv-rn1mEnsj_QTidOmhDb942RQ',
    appId: '1:929006144027:ios:4c490b80b58d0d126046be',
    messagingSenderId: '929006144027',
    projectId: 'akl-beti',
    storageBucket: 'akl-beti.firebasestorage.app',
    iosBundleId: 'com.example.akulbiti',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkzq4mgGxrwif9XFkX9DDR12IYIZSF08k',
    appId: '1:929006144027:web:11640c6063f4fb9c6046be',
    messagingSenderId: '929006144027',
    projectId: 'akl-beti',
    authDomain: 'akl-beti.firebaseapp.com',
    storageBucket: 'akl-beti.firebasestorage.app',
    measurementId: 'G-54W30KJDKK',
  );

}