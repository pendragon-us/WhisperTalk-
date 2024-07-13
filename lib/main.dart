import 'package:flutter/material.dart';
import 'package:whispertalk/screens/Login%20or%20Rejister/login_or_rejister.dart';
import 'package:whispertalk/screens/login/login_page.dart';
import 'package:whispertalk/screens/rejister/rejister_page.dart';
import 'package:whispertalk/screens/splash/splash_screen.dart';
import 'package:whispertalk/services/auth_gate.dart';
import 'package:whispertalk/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const WhisperTalk());
}

class WhisperTalk extends StatelessWidget {
  const WhisperTalk ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login-or-rejister': (context) => const LoginOrRejister(),
        '/auth-gate': (context) => const AuthGate(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Whisper Talk',
      theme: lightMode,
      home: SplashScreen(),
    );
  }
}

//admin@gmail.com
//admin123
