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
    apiKey: 'AIzaSyBHWKsC8UidMJ2TBrvGKyJxQfb9vKEAXak',
    appId: '1:847726951144:web:a161c8efc7ccf2c176675d',
    messagingSenderId: '847726951144',
    projectId: 'privatenotes-arshit',
    authDomain: 'privatenotes-arshit.firebaseapp.com',
    storageBucket: 'privatenotes-arshit.appspot.com',
    measurementId: 'G-86XQK25JQJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5zdNNF3vY9DjXBY_K-l4WyZdR8RAJwdc',
    appId: '1:847726951144:android:bbe7c33a442d70df76675d',
    messagingSenderId: '847726951144',
    projectId: 'privatenotes-arshit',
    storageBucket: 'privatenotes-arshit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYWso7OKG0tuV7qK46cERR6SvfPgDYXs8',
    appId: '1:847726951144:ios:0766aa5f605165de76675d',
    messagingSenderId: '847726951144',
    projectId: 'privatenotes-arshit',
    storageBucket: 'privatenotes-arshit.appspot.com',
    iosClientId: '847726951144-h9ap6gg2dp95a6kmf6ac78434ft0somq.apps.googleusercontent.com',
    iosBundleId: 'com.hello.privatenotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYWso7OKG0tuV7qK46cERR6SvfPgDYXs8',
    appId: '1:847726951144:ios:0766aa5f605165de76675d',
    messagingSenderId: '847726951144',
    projectId: 'privatenotes-arshit',
    storageBucket: 'privatenotes-arshit.appspot.com',
    iosClientId: '847726951144-h9ap6gg2dp95a6kmf6ac78434ft0somq.apps.googleusercontent.com',
    iosBundleId: 'com.hello.privatenotes',
  );
}