import 'package:flutter/material.dart';
import 'package:whispertalk/components/app_button.dart';
import 'package:whispertalk/components/app_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.lock,
                size: 70,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: 50),

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
                  onTap: login
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
                    onTap: (){},
                    child: Text("Register now",
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
    );
  }
}
