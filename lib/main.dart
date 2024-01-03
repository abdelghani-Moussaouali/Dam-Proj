import 'package:dam/Pages/firstPage.dart';
import 'package:dam/Pages/HomePage.dart';
import 'package:dam/Pages/LoginPage.dart';
import 'package:dam/Pages/SignUP.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignUp.id: (context) => SignUp(),
        FirstPage.id: (context) => FirstPage(),
        HomePage.id: (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: FirstPage.id,
    );
  }
}
