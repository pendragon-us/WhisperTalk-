import 'package:flutter/material.dart';

import '../login/login_page.dart';
import '../rejister/rejister_page.dart';

class LoginOrRejister extends StatefulWidget {
  const LoginOrRejister({super.key});

  @override
  State<LoginOrRejister> createState() => _LoginOrRejisterState();
}

class _LoginOrRejisterState extends State<LoginOrRejister> {

  //initially login page is shown
  bool showLoginPage = true;

  //toggle between login and rejister page
  void togglePage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePage);
    }else{
      return RejisterPage(onTap: togglePage);
    }
  }
}
