import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whispertalk/services/auth.dart';

import '../../components/app_button.dart';
import '../../components/app_text_field.dart';

class RejisterPage extends StatelessWidget {
  RejisterPage({super.key, required this.onTap});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  void Function()? onTap;

  void register(BuildContext context){
    final auth = Auth();
    if(_passwordController.text == _confirmPasswordController.text){
      try {
        auth.signUp(_emailController.text, _passwordController.text);
      }catch(e){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Error'),
              content: Text(e.toString()),
            )
        );
      }
    }else{
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Passwords do not match!'),
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Lottie.asset('images/login.json', height: 300),
                SizedBox(height: 20),

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
                    onTap: () => register(context)
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
      ),
    );
  }
}
