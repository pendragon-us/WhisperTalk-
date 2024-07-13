import 'package:flutter/material.dart';
import 'package:whispertalk/screens/login/login_page.dart';
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
      home: LoginPage(),
    );
  }
}

