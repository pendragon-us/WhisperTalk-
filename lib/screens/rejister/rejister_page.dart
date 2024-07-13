import 'package:flutter/material.dart';

import '../../components/app_button.dart';
import '../../components/app_text_field.dart';

class RejisterPage extends StatelessWidget {
  RejisterPage({super.key, required this.onTap});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  void Function()? onTap;

  void register(){}

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
                  "Let's get you started!",
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

              SizedBox(height: 20),

              //confirm password
              AppTextField(
                hintText: 'Confirm Password',
                obscureText: true,
                controller: _confirmPasswordController,
              ),

              //login button
              AppButton(
                  buttonName: 'Register',
                  onTap: register
              ),
              SizedBox(height: 20),

              //register button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login now",
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
