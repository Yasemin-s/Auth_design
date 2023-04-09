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
    apiKey: 'AIzaSyCcSSfGO5of-6JA92sgx_D1_RmgU49NaV0',
    appId: '1:1030560001096:web:65e5cda1239e65a64b7c7d',
    messagingSenderId: '1030560001096',
    projectId: 'auth-1c63b',
    authDomain: 'auth-1c63b.firebaseapp.com',
    storageBucket: 'auth-1c63b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxkeLW6bmTCg0WZzrrXnKSg05E4xukA58',
    appId: '1:1030560001096:android:9a3b269a992b9ca34b7c7d',
    messagingSenderId: '1030560001096',
    projectId: 'auth-1c63b',
    storageBucket: 'auth-1c63b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_s8l9esOs3ov50tUcsiVNyyMn4_avA20',
    appId: '1:1030560001096:ios:17bf27e622c214524b7c7d',
    messagingSenderId: '1030560001096',
    projectId: 'auth-1c63b',
    storageBucket: 'auth-1c63b.appspot.com',
    iosClientId: '1030560001096-tbgbj0265gvivb3aj56koe90np3mgq79.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_s8l9esOs3ov50tUcsiVNyyMn4_avA20',
    appId: '1:1030560001096:ios:17bf27e622c214524b7c7d',
    messagingSenderId: '1030560001096',
    projectId: 'auth-1c63b',
    storageBucket: 'auth-1c63b.appspot.com',
    iosClientId: '1030560001096-tbgbj0265gvivb3aj56koe90np3mgq79.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth1',
  );
}
