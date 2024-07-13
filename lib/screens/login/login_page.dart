import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whispertalk/components/app_button.dart';
import 'package:whispertalk/components/app_text_field.dart';

import '../../services/auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, required this.onTap});

  void Function()? onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;

  void login(BuildContext context) async{
    setState(() {
      isLoading = true;
    });

    final auth = Auth();
    try{
      await auth.signIn(_emailController.text, _passwordController.text);
    }catch(e){
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text(e.toString()),
          )
      );
    }finally{
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: isLoading
              ? Lottie.asset('images/loading.json')
              : SingleChildScrollView(
                child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                //logo
                Lottie.asset('images/login.json', height: 300),
                SizedBox(height: 20),

                //welcome back
                Text(
                    "Welcome back, you've been missed!",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18
                    )
                ),
                SizedBox(height: 30),

                //email
                AppTextField(
                  hintText: 'Email',
                  obscureText: false,
                  controller: _emailController,
                ),
                SizedBox(height: 20),

                //password
                AppTextField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: _passwordController,
                ),

                //login button
                AppButton(
                    buttonName: 'Login',
                    onTap: () => login(context)
                ),
                SizedBox(height: 20),

                //register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )
                  ],
                )
                            ],
                          ),
              ),
        ),
      ),
    );
  }
}
