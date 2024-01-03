import 'package:dam/Component/MyButton.dart';
import 'package:dam/Component/SquareTile.dart';
import 'package:dam/Component/MyTextField.dart';
import 'package:dam/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String id = 'SignUp';
  SignUp({super.key});
  final usernameController = TextEditingController();
  final passwordConroller = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.asset('images/log.png', height: 110),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  'Sign UP NOW',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  'please fill the detailes and create account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  password: false,
                  Controller: usernameController,
                  hintText: 'Full Name',
                  obscureText: false,
                  icon: Icons.person,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  password: false,
                  Controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 10,
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
                        'Forget Password ?',
                        style: TextStyle(color: AppColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: 'Sign UP',
                  ontap: signUserIn,
                  color: AppColor,
                ),
                const SizedBox(
                  height: 15,
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
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Log IN',
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
                    SquareTile(Path: 'images/google.png', ontap: () {  },),
                    SquareTile(Path: 'images/facebook.png', ontap: () {  },),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
