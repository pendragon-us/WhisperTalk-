import 'package:flutter/material.dart';
import 'package:whispertalk/screens/Login%20or%20Rejister/login_or_rejister.dart';
import 'package:whispertalk/screens/login/login_page.dart';
import 'package:whispertalk/screens/rejister/rejister_page.dart';
import 'package:whispertalk/themes/light_mode.dart';

void main() {
  runApp(const WhisperTalk());
}

class WhisperTalk extends StatelessWidget {
  const WhisperTalk ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whisper Talk',
      theme: lightMode,
      home: LoginOrRejister(),
    );
  }
}

//admin@gmail.com
//admin123
