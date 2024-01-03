import 'package:dam/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final Controller;
  final String hintText;
  final IconData icon;
  bool password;
  bool obscureText;
  MyTextField({
    super.key,
    required this.icon,
    required this.password,
    required this.Controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        validator: (data) {},
        obscureText: widget.obscureText,
        controller: widget.Controller,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey[500]),
            hintText: widget.hintText,
            prefixIcon: Icon(widget.icon),
            suffixIcon: (widget.password == true)
                ? (widget.obscureText == true)
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscureText = false;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.eye_slash_fill,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscureText = true;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.eye_fill,
                        ),
                      )
                : null,
            fillColor: Colors.grey.shade200,
            filled: true,
            enabledBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 10, 8, 8))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor))),
      ),
    );
  }
}
