import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/auth-gate');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Lottie.asset('images/splash.json')
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Text(
                      'Whisper Talk',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: 'Pacifico'
                      )
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Feel free to talk with anyone.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                      )
                  ),
                ],
              )
            ),
          ],
        )
      )
    );
  }
}
