import 'dart:ffi';

import 'package:dam/Component/MyButton.dart';
import 'package:dam/Component/SquareTile.dart';
import 'package:dam/Component/MyTextField.dart';
import 'package:dam/Pages/SignUP.dart';
import 'package:dam/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = 'LogiPage';
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordConroller = TextEditingController();

  void LoginUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset('images/log.png', height: 130),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'LOG IN NOW',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                'please login to continue our app',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                password: false,
                Controller: usernameController,
                hintText: 'Email',
                obscureText: false,
                icon: Icons.email,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                password: true,
                Controller: passwordConroller,
                hintText: 'password',
                obscureText: true,
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: AppColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                text: 'Log in',
                ontap: LoginUserIn,
                color: AppColor,
              ),
              const SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('don\'t have an account ?'),
                    const SizedBox(
                      width: 17,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUp.id);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: AppColor),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    Path: 'images/google.png',
                    ontap: () {
                      Navigator.popAndPushNamed(context, 'www.google.com');
                    },
                  ),
                  SquareTile(
                    Path: 'images/facebook.png',
                    ontap: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
