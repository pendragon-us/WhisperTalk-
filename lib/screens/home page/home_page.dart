import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signOut() async {
    final auth = Auth();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: signOut,
          )
        ],
      ),
      body: Center(
        child: Text("Homepage"),
      ),
    );
  }
}
