import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:privatenotes/views/email_verify_view.dart';
import 'package:privatenotes/views/login_views.dart';
import 'package:privatenotes/views/register_view.dart';
import 'firebase_options.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        primarySwatch: Colors.brown,
      ),
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView()
      },
    ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

@override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
                   options: DefaultFirebaseOptions.currentPlatform,
                  ),

        builder:(context, snapshot) {
          switch (snapshot.connectionState){
            case ConnectionState.done:

            final user = FirebaseAuth.instance.currentUser;
            if (user!=null){
              if (user.emailVerified){
                return const Text('Email is Verified');
              }
              else {
                return const VerifyEmailView();
              }
            }
            else {
              return const LoginView();
            }
          default:
            return const Text('Loading...');
          }
        }, 
    );
  }
}
